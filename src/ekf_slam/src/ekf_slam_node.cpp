//! \file
/*! \brief Node for executing state prediction, state correction, and covariance calculations.

PUBLISHES:

    landmarks (ekf_slam/LandmarksMap): classify and publish the center and radius of the landmarks the aruco detetor node detects
    robot_path (ekf_slam/LandmarksMap): publish robot path

SUBSCRIBERS:

    /landmaks (efk_slam::LandmarksMap): subscribe landmarks sent by the landmarks node.
*/

#include <message_filters/subscriber.h>
#include <message_filters/time_synchronizer.h>
#include <message_filters/synchronizer.h>
#include <message_filters/sync_policies/approximate_time.h>

#include <sensor_msgs/Image.h>
#include <sensor_msgs/CameraInfo.h>

// #include <cares_msgs/StereoCameraInfo.h>
// #include "cares_msgs/ArucoDetect.h"
// #include "cares_msgs/ArucoMarkers.h"

#include "nav_msgs/Odometry.h"

#include <Eigen/Core>
#include <Eigen/Geometry>
#include <Eigen/Dense>

#include <geometry_msgs/Pose2D.h>
#include <tf/tf.h>

#include <ekf_slam/LandmarksMap.h>

//!  EkfSlam class.
/*!
Subscribes to 2 topics using message_filters, and coordinate the EKF slam process:
    1. Phase 1 - Prediction:
        1. Update current state using the odometry data
        2. Update matrix A - the jacobian of the prediction model
        3. Update matrix Q - Noise
        4. Calculate new covariance for robot position - Prr Matrix - Prr = A*Prr*A + Q
            1. Extract Prr Matrix from the covariance Matrix
            2. Calculate new Prr Matrix - Prr = A*Prr*A + Q
        5. Calculate new covariance matrix - Pri = A Pri
    2. Phase 2 - Update state from re-observed landmarks:
*/
class EkfSlam
{
private:
    // TimeSynchronizer
    message_filters::Subscriber<ekf_slam::LandmarksMap> aruco_sub_;                                     /**< message_filters subscriber */
    message_filters::Subscriber<nav_msgs::Odometry> odom_sub_;                                          /**< message_filters subscriber */
    typedef message_filters::TimeSynchronizer<ekf_slam::LandmarksMap, nav_msgs::Odometry> sync_policy_; /**< Defines the sync policy */
    std::shared_ptr<sync_policy_> sync;                                                                 /**< a shared pointer to the sync policy - has to be std::shared_ptr and has to be reset at the constructor with a new sync_policy_*/

    // Range bearing
    Eigen::Vector2d range_bearing_landmark_h_ = Eigen::Vector2d(0, 0);
    Eigen::Vector2d range_bearing_data_association_z_ = Eigen::Vector2d(0, 0);

    // Robot state
    Eigen::VectorXd current_state_ = Eigen::VectorXd(3);
    double current_state_changed_threshold_ = 0.01;
    std::vector<Eigen::VectorXd> robot_state_array_;
    bool has_moved_;

    // deltas
    double delta_x_;
    double delta_y_;
    double delta_theta_;
    ros::Time current_time_, last_time_;
    double delta_t_;

    // Jacobians
    Eigen::Matrix3d jacobian_a_matrix_; /** Jacobian of the prediction model */
    Eigen::Matrix3d jacobian_h_matrix_; /** Jacobian of the measurement model */

    // Noise matrix
    Eigen::Matrix3d noise_q_matrix_; /** Noise Matrix Q */
    double c_ = 0.01;                /** gausian sample -  it's a representation of how exact the odometer is*/

    // Covariance matrix P
    Eigen::MatrixXd covariance_p_matrix_ = Eigen::MatrixXd(3, 3);
    Eigen::Matrix3d covariance_prr_matrix_ = Eigen::Matrix3d(3, 3);

    // Landmarks detected
    std::vector<int> landmarks_detected_;

    int aux;

public:
    EkfSlam(ros::NodeHandle &nh)
    {

        // GOOD TimeSynchronizer
        aruco_sub_.subscribe(nh, "landmarks", 100);
        odom_sub_.subscribe(nh, "odom", 100);
        sync.reset(new sync_policy_(aruco_sub_, odom_sub_, 10));
        sync->registerCallback(std::bind(&EkfSlam::ekfCallback, this, std::placeholders::_1, std::placeholders::_2));

        // initialize current position to 0
        current_state_ << 0, 0, 0;
        has_moved_ = false;

        // initialize timers
        current_time_ = ros::Time::now();
        last_time_ = ros::Time::now();
    }

    /// \todo Make function `contains` commom
    template <typename T>
    bool contains(std::vector<T> vec, const T &elem)
    {
        bool result = false;
        if (find(vec.begin(), vec.end(), elem) != vec.end())
        {
            result = true;
        }
        return result;
    }

    /// \brief receive a vector of Eigen::VectorXd and returns a Eigen::VectorXd with the menas of each element index.
    Eigen::VectorXd eigenMeans(std::vector<Eigen::VectorXd> &data)
    {
        Eigen::VectorXd means(data[0].rows());
        for (unsigned i = 0; i < means.rows(); i++)
        {
            means(i) = 0;
        }
        // check if not empty
        if (!data.empty())
        {
            // sum of peers
            for (unsigned i = 0; i < data.size(); i++)
            {
                for (unsigned j = 0; j < data[0].rows(); j++)
                {
                    means(j) += data[i](j);
                }
            }
            // mean
            for (unsigned i = 0; i < data[0].rows(); i++)
            {
                means(i) /= data.size();
            }
        }

        return means;
    }

    /// \brief Computes the covariance given 2 elements (X and Y).
    double computeEigenCovariance(int &x, int &y, std::vector<Eigen::VectorXd> &data)
    {
        Eigen::VectorXd componentMeans = eigenMeans(data);

        double covxy;
        double sum;

        for (unsigned i = 0; i < data.size(); i++)
        {
            sum += (data[i](x) - componentMeans(x)) * (data[i](y) - componentMeans(y));
        }
        covxy = sum / (data.size() - 1);
        return covxy;
    }

    Eigen::MatrixXd computeEigenCovarianceMatrix(std::vector<Eigen::VectorXd> &m)
    {
        Eigen::MatrixXd covMatrix(m[0].rows(), m[0].rows());

        for (unsigned i = 0; i < m[0].rows(); i++)
        {
            for (unsigned j = 0; j < m[0].rows(); j++)
            {
                covMatrix(i, j) = 0;
            }
        }
        std::vector<Eigen::VectorXd> maux = m;

        for (int i = 0; i < m[0].rows(); i++)
        {
            for (int j = 0; j < m[0].rows(); j++)
            {
                // std::cout << m[0].size() << std::endl;
                covMatrix(i, j) = computeEigenCovariance(i, j, m);
                // std::cout << "Covariance at " << i << " " << j << " " << ": " << compute_covariance(i, j, maux) << std::endl;
            }
        }

        return covMatrix;
    }

    /// \brief receive odometry data update robot's position state and deltas (x, y, theta, and time)
    void updateCurrentState(const nav_msgs::Odometry::ConstPtr &msg)
    {
        current_time_ = ros::Time::now();
        geometry_msgs::Pose2D pose2d;
        pose2d.x = msg->pose.pose.position.x;
        pose2d.y = msg->pose.pose.position.y;

        tf::Quaternion q(
            msg->pose.pose.orientation.x,
            msg->pose.pose.orientation.y,
            msg->pose.pose.orientation.z,
            msg->pose.pose.orientation.w);

        tf::Matrix3x3 m(q);
        double yaw, pitch, roll;
        m.getEulerYPR(yaw, pitch, roll);
        // Get the matrix represented as euler angles around YXZ, roundtrip with setEulerYPR.
        // yaw	Yaw around Z axis
        // pitch	Pitch around Y axis
        // roll	around X axis

        pose2d.theta = pitch;

        // check if the robot has move
        if (((pose2d.x > current_state_(0) + current_state_changed_threshold_) || (pose2d.x < current_state_(0) - current_state_changed_threshold_)) ||
            ((pose2d.y > current_state_(1) + current_state_changed_threshold_) || (pose2d.y < current_state_(1) - current_state_changed_threshold_)) ||
            ((pose2d.theta > current_state_(2) + current_state_changed_threshold_) || (pose2d.theta < current_state_(2) - current_state_changed_threshold_)))
        {
            has_moved_ = true;
            std::cout << "---------------------------------------------------"
                      << std::endl
                      << "Phase 1 - Prediction" << std::endl
                      << std::endl;

            std::cout << "Step 1 - Update current state using the odometry data:" << std::endl
                      << std::endl;

            std::cout << "Old state" << std::endl
                      << std::endl;

            std::cout << "X: " << current_state_(0) << std::endl;
            std::cout << "Y: " << current_state_(1) << std::endl;
            std::cout << "Theta: " << current_state_(2) << std::endl
                      << std::endl;

            // Update deltas
            delta_x_ = current_state_(0) - pose2d.x;
            delta_y_ = current_state_(0) - pose2d.y;
            delta_theta_ = current_state_(0) - pose2d.theta;

            // Update current position with odometry data
            current_state_(0) = pose2d.x;
            current_state_(1) = pose2d.y;
            current_state_(2) = pose2d.theta;

            std::cout << "New state" << std::endl
                      << std::endl;

            std::cout << "X: " << current_state_(0) << std::endl;
            std::cout << "Y: " << current_state_(1) << std::endl;
            std::cout << "Theta: " << current_state_(2) << std::endl
                      << std::endl;

            robot_state_array_.push_back(current_state_);

            delta_t_ = current_time_.toSec() - last_time_.toSec();

            std::cout << "Deltas" << std::endl
                      << std::endl;

            std::cout << "Delta X: " << delta_x_ << std::endl;
            std::cout << "Delta Y: " << delta_y_ << std::endl;
            std::cout << "Delta theta: " << delta_theta_ << std::endl;
            std::cout << "Delta t: " << delta_t_ << std::endl
                      << std::endl;

            last_time_ = current_time_;
            // has_moved_ = false;
        }
    }

    /// \brief receive landmark positions
    void updateJacobianPredictionModel()
    {

        std::cout << "Step 2 - Update matrix A - The jacobian of the prediction model" << std::endl
                  << std::endl;

        for (int i = 0; i < 3; i++)
        {
            for (int j = 0; j < 3; j++)
            {
                if (i == j)
                {
                    jacobian_a_matrix_(i, j) = 1;
                }
                else if (i == 0 && j == 2)
                {
                    jacobian_a_matrix_(i, j) = -delta_y_;
                }
                else if (i == 1 && j == 2)
                {
                    jacobian_a_matrix_(i, j) = delta_x_;
                }
                else
                {
                    jacobian_a_matrix_(i, j) = 0;
                }
            }
        }
        std::cout << "Matrix A: The jacobian of the prediction model" << std::endl
                  << std::endl;

        std::cout << jacobian_a_matrix_ << std::endl;
    }

    /// \brief Calculates the noise matrix Q
    void updateNoiseQ()
    {

        std::cout << std::endl
                  << "Step 3 - Update matrix Q - Noise" << std::endl;
        std::cout << std::endl
                  << "Delta t: " << delta_t_ << " seconds" << std::endl;
        std::cout << std::endl
                  << "Matrix Q: Noise - For c = " << c_ << std::endl
                  << std::endl;

        noise_q_matrix_(0, 0) = c_ * delta_x_ * delta_x_;
        noise_q_matrix_(1, 1) = c_ * delta_y_ * delta_y_;
        noise_q_matrix_(2, 2) = c_ * delta_theta_ * delta_theta_;
        noise_q_matrix_(0, 1) = c_ * delta_x_ * delta_y_;
        noise_q_matrix_(0, 2) = c_ * delta_x_ * delta_t_;
        noise_q_matrix_(1, 0) = c_ * delta_y_ * delta_x_;
        noise_q_matrix_(1, 2) = c_ * delta_y_ * delta_t_;
        noise_q_matrix_(2, 0) = c_ * delta_t_ * delta_x_;
        noise_q_matrix_(2, 1) = c_ * delta_t_ * delta_y_;

        std::cout << noise_q_matrix_ << std::endl;
    }

    /// \brief Calculates the noise matrix Q
    void updateCovarianceMatrixP()
    {

        std::cout << std::endl
                  << "Step 4 - Calculate new covariance for robot position - Prr Matrix - Prr = A*Prr*A + Q" << std::endl
                  << std::endl;

        // First calculate the covariance  matrix to be able to extract Prr
        std::cout << "Step 4.1 - Extract Prr Matrix from the covariance Matrix" << std::endl
                  << std::endl;

        covariance_p_matrix_ = computeEigenCovarianceMatrix(robot_state_array_);

        std::cout << "Current covariance Matrix: " << std::endl
                  << std::endl
                  << covariance_p_matrix_ << std::endl
                  << std::endl;

        covariance_prr_matrix_ = covariance_p_matrix_.block<3, 3>(0, 0);

        std::cout << "Covariance Prr Matrix: " << std::endl
                  << std::endl
                  << covariance_prr_matrix_ << std::endl;

        std::cout << std::endl
                  << "Step 4.2 - Calculate new Prr Matrix - Prr = A*Prr*A + Q" << std::endl
                  << std::endl;

        covariance_prr_matrix_ = jacobian_a_matrix_ * covariance_prr_matrix_ * jacobian_a_matrix_ + noise_q_matrix_;

        std::cout << "New covariance Prr Matrix: " << std::endl
                  << std::endl
                  << covariance_prr_matrix_ << std::endl;

        std::cout << std::endl
                  << "Step 5 - Calculate new covariance matrix - Pri = A Pri " << std::endl
                  << std::endl;

        std::cout << "Current Covariance matrix: " << std::endl
                  << std::endl
                  << covariance_p_matrix_ << std::endl;

        covariance_p_matrix_.block<3, 3>(0, 0) = covariance_prr_matrix_;

        std::cout << std::endl
                  << "New covariance matrix with Prr block inserted: " << std::endl
                  << std::endl
                  << covariance_p_matrix_ << std::endl;
        /// \todo confirm this calculation of Pri = A * Pri
        // covariance_p_matrix_ = jacobian_a_matrix_ * covariance_p_matrix_;

        // std::cout << std::endl
        //           << "New covariance matrix Pri = A Pri " << std::endl
        //           << std::endl
        //           << covariance_p_matrix_ << std::endl;

        std::cout << std::endl
                  << "Finished Phase 1 - Prediction"
                  << "---------------------------------------------------" << std::endl
                  << std::endl;
    }

    /// \brief Update current state and if it has changed, update the Jacobian of the prediction model, A, the process noise matrix Q, and update the Covariance matrix P.
    void ekfCallback(const ekf_slam::LandmarksMap::ConstPtr &landmarks_map, const nav_msgs::Odometry::ConstPtr &msg)
    {
        // Phase 1 - Prediction
        updateCurrentState(msg);
        if (has_moved_)
        {
            updateJacobianPredictionModel();
            updateNoiseQ();
            updateCovarianceMatrixP();
            // Phase 3 - Check for new landmarks
            for (int i = 0; i < landmarks_map->id.size(); i++)
            {
                // if the landmark detected is not registered in the landmarks_detected vector, register it.
                aux = landmarks_map->id[i];
                if (!contains(landmarks_detected_, aux))
                {
                    // update the landmarks_detected vector
                    landmarks_detected_.emplace_back(aux);
                    // add 2 rows at the
                    std::cout << "Old vector size:  " << current_state_.size() << std::endl;
                    current_state_.resize(current_state_.size() + 2);

                    //Update all the robot_state_array_ vector sizes
                    for (int k = 0; k < robot_state_array_.size(); k++)
                    {
                        robot_state_array_[k].resize(current_state_.size());
                        /// \todo make so that the number to add is not zero, maybe a vector that holds the place where it was added and discount from the total length at the means calculation
                        robot_state_array_[k](current_state_.size() - 2) = 0;
                        robot_state_array_[k](current_state_.size() - 1) = 0;
                    }
                    std::cout << "robot_state_array_ 0 vector size:  " << robot_state_array_[0].size() << std::endl;
                    current_state_(current_state_.size() - 2) = landmarks_map->x[i];
                    current_state_(current_state_.size() - 1) = landmarks_map->y[i];
                    robot_state_array_.emplace_back(current_state_);
                    std::cout << "Old vector size matrix:  " << covariance_p_matrix_.size() << std::endl;
                    covariance_p_matrix_.resize((covariance_p_matrix_.rows() + 2), (covariance_p_matrix_.cols() + 2));
                    std::cout << "New vector size matrix:  " << covariance_p_matrix_.rows() << "x" << covariance_p_matrix_.cols() << std::endl;
                    //Initialize the new covariant matrix
                    for (int s = 0; s < covariance_p_matrix_.size(); s++){
                        covariance_p_matrix_(s) = 0;
                    }
                    updateCovarianceMatrixP();
                }
            }

            has_moved_ = false;
        }
        /// \todo Step 3

        // has_moved_ = false;
    }
};

int main(int argc, char **argv)
{
    ros::init(argc, argv, "ekf_slam_node");

    ros::NodeHandle nh;

    EkfSlam ekf_slam(nh);

    ros::spin();

    return 0;
}