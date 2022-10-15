#include <message_filters/subscriber.h>
#include <message_filters/time_synchronizer.h>
#include <message_filters/synchronizer.h>
#include <message_filters/sync_policies/approximate_time.h>

#include <sensor_msgs/Image.h>
#include <sensor_msgs/CameraInfo.h>

#include <cares_msgs/StereoCameraInfo.h>
#include "cares_msgs/ArucoDetect.h"
#include "cares_msgs/ArucoMarkers.h"

#include "nav_msgs/Odometry.h"

#include <Eigen/Core>
#include <Eigen/Geometry>
#include <Eigen/Dense>

class EkfSlam
{
public:
    EkfSlam(ros::NodeHandle &nh)
    {

        // GOOD TimeSynchronizer
        aruco_sub_.subscribe(nh, "stereo_pair/markers", 100); 
        odom_sub_.subscribe(nh, "odom", 100);
        sync.reset(new sync_policy_(aruco_sub_, odom_sub_, 10));
        sync->registerCallback(std::bind(&EkfSlam::ekfCallback, this, std::placeholders::_1, std::placeholders::_2));
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

    /// \brief receive landmark positions
    void ekfCallback(const cares_msgs::ArucoMarkers::ConstPtr &aruco_marker, const nav_msgs::Odometry::ConstPtr &msg)
    {
        std::cout << "Callback X: " << msg->pose.pose.position.x << std::endl;
        if (!aruco_marker->marker_poses.empty())
            std::cout << "Callback Poses X: " << aruco_marker->marker_poses[0].position.x << std::endl;
    }
    
private:
    // TimeSynchronizer
    message_filters::Subscriber<cares_msgs::ArucoMarkers> aruco_sub_; /**< message_filters subscriber */
    message_filters::Subscriber<nav_msgs::Odometry> odom_sub_; /**< message_filters subscriber */
    typedef message_filters::TimeSynchronizer<cares_msgs::ArucoMarkers, nav_msgs::Odometry> sync_policy_; /**< Defines the sync policy */
    std::shared_ptr<sync_policy_> sync; /**< a shared pointer to the sync policy - has to be std::shared_ptr and has to be reset at the constructor with a new sync_policy_*/

};

int main(int argc, char **argv)
{
    ros::init(argc, argv, "vision_node");

    ros::NodeHandle nh;

    EkfSlam ekf_slam(nh);

    ros::spin();

    return 0;
}