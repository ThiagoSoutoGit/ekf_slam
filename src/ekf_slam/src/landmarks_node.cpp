/// \file
/// \brief Node for receiving the detected aruco markers, calculate their positions, check if they are new landmarks, and publishing them.
///
/// PUBLISHES:
///     landmarks (ekf_slam/LandmarksMap): classify and publish the center and radius of the landmarks the aruco detetor node detects
///     robot_path (ekf_slam/LandmarksMap): publish robot path
///
/// SUBSCRIBERS:
///     /stereo_pair/markers (Cares_msgs/ArucoMarkers): subscribe to the laser data

#include <ros/ros.h>

#include <cares_msgs/StereoCameraInfo.h>
#include "cares_msgs/ArucoDetect.h"
#include "cares_msgs/ArucoMarkers.h"

#include <geometry_msgs/Pose2D.h>
#include "nav_msgs/Odometry.h"
#include <tf2_geometry_msgs/tf2_geometry_msgs.h>
#include <tf/tf.h>

// #include <visualization_msgs/Marker.h>
// #include <visualization_msgs/MarkerArray.h>

#include <ekf_slam/LandmarksMap.h>

#include <Eigen/Core>
#include <Eigen/Geometry>
#include <Eigen/Dense>

#include <message_filters/subscriber.h>
#include <message_filters/time_synchronizer.h>


class PublishLandmarks
{
public:
    PublishLandmarks(ros::NodeHandle &nh)
    {
        // aruco_sub_ = nh.subscribe("stereo_pair/markers", 1000, &PublishLandmarks::calculateArucoPosition, this);

        // message_filters::Subscriber<nav_msgs::Odometry::ConstPtr> odom_filter_sub_(nh, "odom", 1);
        // message_filters::Subscriber<cares_msgs::ArucoMarkers::ConstPtr> aruco_filter_sub_.subscribe(nh, "stereo_pair/markers", 1);
        // message_filters::TimeSynchronizer<nav_msgs::Odometry::ConstPtr, cares_msgs::ArucoMarkers> sync(odom_filter_sub_, aruco_filter_sub_, 10);
        // sync.registerCallback(std::bind(&PublishLandmarks::moveRobot, this,_1, _2));

        message_filters::Subscriber<cares_msgs::ArucoMarkers> image_sub(nh, "image", 1);
        message_filters::Subscriber<nav_msgs::Odometry> info_sub(nh, "camera_info", 1);
        message_filters::TimeSynchronizer<cares_msgs::ArucoMarkers, nav_msgs::Odometry> sync(image_sub, info_sub, 10);
        sync.registerCallback(boost::bind(&PublishLandmarks::moveRobot, this, _1, _2));



        
        // aruco_sub_ = nh.subscribe("stereo_pair/markers", 100, &PublishLandmarks::moveRobot, this);
        // odom_sub_ = nh.subscribe("odom", 100, &PublishLandmarks::currentPosition, this);

        landmark_pub_ = nh.advertise<ekf_slam::LandmarksMap>("landmarks", 100, true);
        odom_pub_ = nh.advertise<ekf_slam::LandmarksMap>("robot_path", 100, true);

        threshold_ = 0.01;
        size_ = 0.3;
        odom_marker_size_ = 0.2;
        odom_marker_size_threshold_ = 0.1;
        land_map_threshold_ = 0.3;
    }

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

    // void moveRobot2(const nav_msgs::Odometry::ConstPtr &msg, const cares_msgs::ArucoMarkers &aruco_marker)
    // {
    //     for (int i = 0; i < 1000; i++)
    //     {
    //         calculateArucoPosition(aruco_marker);
    //     }
    // }
    
    int getIndex(std::vector<int64_t> v, int K)
    {
        auto it = std::find(v.begin(), v.end(), K);
        int index = it - v.begin();
        return index;
    }

    void moveRobot(const cares_msgs::ArucoMarkers::ConstPtr &aruco_marker, const nav_msgs::Odometry::ConstPtr &odom_msg)
    {
        if (!aruco_marker->marker_ids.empty())
        {
            for (auto pose : aruco_marker->marker_poses)
            {
                int i = 0;
                double z = pose.position.z;
                geometry_msgs::Pose2D pose2d;
                pose2d.x = pose.position.x;
                pose2d.y = pose.position.y;

                tf::Quaternion q(
                    pose.orientation.x,
                    pose.orientation.y,
                    pose.orientation.z,
                    pose.orientation.w);

                tf::Matrix3x3 m(q);
                double roll, pitch, yaw;
                m.getEulerYPR(yaw, pitch, roll);

                pose2d.theta = yaw;

                std::cout << std::endl
                          << "Aruco marker pose from stereo_pair:" << std::endl
                          << std::endl;
                std::cout << "Position X: " << pose2d.x << std::endl;
                std::cout << "Position Y: " << pose2d.y << std::endl;
                std::cout << "Position Z: " << z << std::endl;
                std::cout << "Position theta: " << pose2d.theta << std::endl;

                if (current_position_.size() > 0)
                {
                    // double theta_sum = pose2d.theta + current_position_(2);
                    // double xw = (pose.position.x * cos(theta_sum)) - (pose.position.z * sin(theta_sum));
                    // double yw = (pose.position.z * cos(theta_sum)) - (pose.position.x * sin(theta_sum));

                    double xw = (pose.position.x * cos(pose2d.theta)) - (z * sin(pose2d.theta));
                    double yw = (z * cos(pose2d.theta)) - (pose.position.x * sin(pose2d.theta));

                    landmark_position_(0) = current_position_(0) + xw;
                    landmark_position_(1) = current_position_(1) + yw;
                    landmark_position_(2) = current_position_(2) + pose2d.theta;

                    std::cout << std::endl
                              << "landmark detected id:" << aruco_marker->marker_ids[i] << std::endl
                              << std::endl;
                    std::cout << "Position Xw: " << xw << std::endl;
                    std::cout << "Position Yw: " << yw << std::endl
                              << std::endl;
                    std::cout << "Position X: " << landmark_position_(0) << std::endl;
                    std::cout << "Position Y: " << landmark_position_(1) << std::endl;
                    std::cout << "Position theta: " << landmark_position_(2) << std::endl;

                    std::cout << std::endl
                              << "Odom position:" << std::endl
                              << std::endl;
                    std::cout << "Position Xw: " << current_position_(0) << std::endl;
                    std::cout << "Position Yw: " << current_position_(1) << std::endl;
                    std::cout << "Position theta: " << current_position_(2) << std::endl;

                    // if(land_map_.id.size() > 100) {
                    //     land_map_.id.erase(land_map_.id.begin());
                    //     land_map_.x.erase(land_map_.x.begin());
                    //     land_map_.y.erase(land_map_.y.begin());
                    //     land_map_.size.erase(land_map_.size.begin());
                    //     land_map_.map.erase(land_map_.map.begin());
                    // } 

                    if (land_map_.id.empty())
                    {
                        land_map_.id.emplace_back(aruco_marker->marker_ids[i]);
                        land_map_.x.emplace_back(landmark_position_(0));
                        land_map_.y.emplace_back(landmark_position_(1));
                        land_map_.size.emplace_back(size_);
                        land_map_.map.emplace_back(1);
                        landmark_pub_.publish(land_map_);
                        marker_ids_.push_back(aruco_marker->marker_ids[i]);
                    } 
                    //else if (contains(marker_ids_, aruco_marker->marker_ids[i]))
                    // {
                    //     for ( int j = 0; j < land_map_.id.size(); j++){
                    //         if (land_map_.id[j] == i){
                    //             land_map_.id[j] = aruco_marker->marker_ids[i];
                    //             land_map_.x[j] = landmark_position_(0);
                    //             land_map_.y[j] = landmark_position_(1);
                    //             land_map_.size[j] = size_;
                    //             land_map_.map[j] = 1;

                    //             landmark_pub_.publish(land_map_);
                    //             // marker_ids_.push_back(aruco_marker->marker_ids[i]);
                    //         }
                    //     }
                        
                    // } 
                    else if (!contains(marker_ids_, aruco_marker->marker_ids[i])){
                        land_map_.id.emplace_back(aruco_marker->marker_ids[i]);
                        land_map_.x.emplace_back(landmark_position_(0));
                        land_map_.y.emplace_back(landmark_position_(1));
                        land_map_.size.emplace_back(size_);
                        land_map_.map.emplace_back(1);
                        landmark_pub_.publish(land_map_);
                        marker_ids_.push_back(aruco_marker->marker_ids[i]);
                    }

                    else if (contains(marker_ids_, aruco_marker->marker_ids[i])){
                        int ind = 0;
                        getIndex(land_map_.id, aruco_marker->marker_ids[i]);
                        land_map_.id[ind] = aruco_marker->marker_ids[i];
                        land_map_.x[ind] = landmark_position_(0);
                        land_map_.y[ind] = landmark_position_(1);
                        land_map_.size[ind] = size_;
                        land_map_.map[ind] = 1;
                        landmark_pub_.publish(land_map_);
                        // marker_ids_.push_back(aruco_marker->marker_ids[i]);
                    }
                }
            }
        }
    }

    

    /// \brief save the scan from the lidar, cluste the points, call circle fitting algorithm
    void calculateArucoPosition(const cares_msgs::ArucoMarkers::ConstPtr &aruco_marker)
    {
        if (!aruco_marker->marker_ids.empty())
        {
            for (auto pose : aruco_marker->marker_poses)
            {
                int i = 0;
                double z = pose.position.z;
                geometry_msgs::Pose2D pose2d;
                pose2d.x = pose.position.x;
                pose2d.y = pose.position.y;

                tf::Quaternion q(
                    pose.orientation.x,
                    pose.orientation.y,
                    pose.orientation.z,
                    pose.orientation.w);

                tf::Matrix3x3 m(q);
                double roll, pitch, yaw;
                m.getEulerYPR(yaw, pitch, roll);

                pose2d.theta = yaw;

                std::cout << std::endl
                          << "Aruco marker pose from stereo_pair:" << std::endl
                          << std::endl;
                std::cout << "Position X: " << pose2d.x << std::endl;
                std::cout << "Position Y: " << pose2d.y << std::endl;
                std::cout << "Position Z: " << z << std::endl;
                std::cout << "Position theta: " << pose2d.theta << std::endl;

                if (current_position_.size() > 0)
                {
                    // double theta_sum = pose2d.theta + current_position_(2);
                    // double xw = (pose.position.x * cos(theta_sum)) - (pose.position.z * sin(theta_sum));
                    // double yw = (pose.position.z * cos(theta_sum)) - (pose.position.x * sin(theta_sum));

                    double xw = (pose.position.x * cos(pose2d.theta)) - (z * sin(pose2d.theta));
                    double yw = (z * cos(pose2d.theta)) - (pose.position.x * sin(pose2d.theta));

                    landmark_position_(0) = current_position_(0) + xw;
                    landmark_position_(1) = current_position_(1) + yw;
                    landmark_position_(2) = current_position_(2) + pose2d.theta;

                    std::cout << std::endl
                              << "landmark detected id:" << aruco_marker->marker_ids[i] << std::endl
                              << std::endl;
                    std::cout << "Position Xw: " << xw << std::endl;
                    std::cout << "Position Yw: " << yw << std::endl
                              << std::endl;
                    std::cout << "Position X: " << landmark_position_(0) << std::endl;
                    std::cout << "Position Y: " << landmark_position_(1) << std::endl;
                    std::cout << "Position theta: " << landmark_position_(2) << std::endl;

                    std::cout << std::endl
                              << "Odom position:" << std::endl
                              << std::endl;
                    std::cout << "Position Xw: " << current_position_(0) << std::endl;
                    std::cout << "Position Yw: " << current_position_(1) << std::endl;
                    std::cout << "Position theta: " << current_position_(2) << std::endl;

                    // if(land_map_.id.size() > 100) {
                    //     land_map_.id.erase(land_map_.id.begin());
                    //     land_map_.x.erase(land_map_.x.begin());
                    //     land_map_.y.erase(land_map_.y.begin());
                    //     land_map_.size.erase(land_map_.size.begin());
                    //     land_map_.map.erase(land_map_.map.begin());
                    // } 

                    if (land_map_.id.empty())
                    {
                        land_map_.id.emplace_back(aruco_marker->marker_ids[i]);
                        land_map_.x.emplace_back(landmark_position_(0));
                        land_map_.y.emplace_back(landmark_position_(1));
                        land_map_.size.emplace_back(size_);
                        land_map_.map.emplace_back(1);
                        landmark_pub_.publish(land_map_);
                        marker_ids_.push_back(aruco_marker->marker_ids[i]);
                    } 
                    //else if (contains(marker_ids_, aruco_marker->marker_ids[i]))
                    // {
                    //     for ( int j = 0; j < land_map_.id.size(); j++){
                    //         if (land_map_.id[j] == i){
                    //             land_map_.id[j] = aruco_marker->marker_ids[i];
                    //             land_map_.x[j] = landmark_position_(0);
                    //             land_map_.y[j] = landmark_position_(1);
                    //             land_map_.size[j] = size_;
                    //             land_map_.map[j] = 1;

                    //             landmark_pub_.publish(land_map_);
                    //             // marker_ids_.push_back(aruco_marker->marker_ids[i]);
                    //         }
                    //     }
                        
                    // } 
                    else if (!contains(marker_ids_, aruco_marker->marker_ids[i])){
                        land_map_.id.emplace_back(aruco_marker->marker_ids[i]);
                        land_map_.x.emplace_back(landmark_position_(0));
                        land_map_.y.emplace_back(landmark_position_(1));
                        land_map_.size.emplace_back(size_);
                        land_map_.map.emplace_back(1);
                        landmark_pub_.publish(land_map_);
                        marker_ids_.push_back(aruco_marker->marker_ids[i]);
                    }

                    else if (contains(marker_ids_, aruco_marker->marker_ids[i])){
                        int ind = 0;
                        getIndex(land_map_.id, aruco_marker->marker_ids[i]);
                        land_map_.id[ind] = aruco_marker->marker_ids[i];
                        land_map_.x[ind] = landmark_position_(0);
                        land_map_.y[ind] = landmark_position_(1);
                        land_map_.size[ind] = size_;
                        land_map_.map[ind] = 1;
                        landmark_pub_.publish(land_map_);
                        // marker_ids_.push_back(aruco_marker->marker_ids[i]);
                    }


                    

                    

                                        // else if ((fabs(landmark_position_(0) - land_map_.x.back()) > land_map_threshold_) ||
                    //          (fabs(landmark_position_(1) - land_map_.y.back()) > land_map_threshold_))
                    // {
                    //     land_map_.id.emplace_back(aruco_marker->marker_ids[i]);
                    //     land_map_.x.emplace_back(-landmark_position_(0));
                    //     land_map_.y.emplace_back(landmark_position_(1));
                    //     land_map_.size.emplace_back(size_);
                    //     land_map_.map.emplace_back(1);

                    //     landmark_pub_.publish(land_map_);
                    //     marker_ids_.push_back(aruco_marker->marker_ids[i]);
                    // }

                    // else if (std::count(marker_ids_.begin(), marker_ids_.end(), aruco_marker->marker_ids[i]) < 30)
                    // {
                    // land_map_.id.emplace_back(aruco_marker->marker_ids[i]);
                    // land_map_.x.emplace_back(-landmark_position_(0));
                    // land_map_.y.emplace_back(landmark_position_(1));
                    // land_map_.size.emplace_back(size_);
                    // land_map_.map.emplace_back(1);

                    // landmark_pub_.publish(land_map_);
                    // marker_ids_.push_back(aruco_marker->marker_ids[i]);
                    // }

                    // for(int i = 0; i < land_map_.x.size(); i++) {
                    //     for(int j = 0; j < land_map_.x.size(); j++){
                    //         if ((std::fabs(land_map_.x[i] - land_map_.x[j]) > threshold_)){
                    //             std::cout << std::endl << "Threshold for X > " << threshold_ << ", difference was: " << land_map_.x[i] - land_map_.x[j] << "verifying y now" << std::endl;
                    //             for (int k = 0; k < land_map_.x.size(); k++)
                    //             {
                    //                 for(int l = 0; l < land_map_.x.size(); l++)
                    //                 {
                    //                    if ((std::fabs(land_map_.y[k] - land_map_.y[l]) > threshold_)) {
                    //                     std::cout << std::endl << "Threshold for Y > " << threshold_ << ", difference was: " << land_map_.y[k] - land_map_.y[l] << ", now publishing" << std::endl;
                    //                         land_map_.id.emplace_back(aruco_marker->marker_ids[i]);
                    //                         land_map_.x.emplace_back(landmark_position_(0));
                    //                         land_map_.y.emplace_back(landmark_position_(1));
                    //                         land_map_.size.emplace_back(size_);
                    //                         land_map_.map.emplace_back(1);
                    //                         landmark_pub_.publish(land_map_);
                    //                         marker_ids_.push_back(aruco_marker->marker_ids[i]);
                    //                     }
                    //                 }
                    //             }
                    //         }
                    //     }
                    // }

                    // ONly for X
                    // for(int i = 0; i < land_map_.x.size(); i++) {
                    //     for(int j = 0; j < land_map_.x.size(); j++){
                    //         land_map_.id.emplace_back(aruco_marker->marker_ids[i]);
                    //         land_map_.x.emplace_back(landmark_position_(0));
                    //         land_map_.y.emplace_back(landmark_position_(1));
                    //         land_map_.size.emplace_back(size_);
                    //         land_map_.map.emplace_back(1);
                    //         // landmark_pub_.publish(land_map_);
                    //         marker_ids_.push_back(aruco_marker->marker_ids[i]);
                    //         std::cout << std::endl << "i: " << i << " "<< land_map_.x[i] << std::endl;
                    //         std::cout << std::endl << "j: " << j << " "<< land_map_.x[j] << std::endl;
                    //         std::cout << std::endl << "delta" << (std::fabs(land_map_.x[i] - land_map_.x[j])) << std::endl;
                    //         if ((std::fabs(land_map_.x[i] - land_map_.x[j]) < threshold_)){
                    //             std::cout << std::endl << "SAME" << std::endl;
                    //         } else {
                    //             land_map_.id.emplace_back(aruco_marker->marker_ids[i]);
                    //             land_map_.x.emplace_back(landmark_position_(0));
                    //             land_map_.y.emplace_back(landmark_position_(1));
                    //             land_map_.size.emplace_back(size_);
                    //             land_map_.map.emplace_back(1);
                    //             landmark_pub_.publish(land_map_);
                    //             marker_ids_.push_back(aruco_marker->marker_ids[i]);
                    //         }
                    //     }
                    // }
                }
                i++;
            }
        }
    }

    /// \brief save the scan from the lidar, cluste the points, call circle fitting algorithm
    void currentPosition(const nav_msgs::Odometry::ConstPtr &msg)
    {
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

        // pose2d.theta = yaw;
        pose2d.theta = pitch;

        // std::cout << "Theta at odom level: " << pose2d.theta << std::endl;

        current_position_(0) = pose2d.y;
        current_position_(1) = pose2d.x;
        current_position_(2) = pose2d.theta;

        if (robot_path_.id.empty())
        {
            robot_path_.id.emplace_back(odom_id_);
            robot_path_.x.emplace_back(current_position_(0));
            robot_path_.y.emplace_back(current_position_(1));
            robot_path_.size.emplace_back(odom_marker_size_);
            robot_path_.map.emplace_back(2);

            odom_pub_.publish(robot_path_);

            odom_id_++;
        }
        else if ((fabs(current_position_(0) - robot_path_.x.back()) > odom_marker_size_threshold_) ||
                 (fabs(current_position_(1) - robot_path_.y.back()) > odom_marker_size_threshold_))
        {
            robot_path_.id.emplace_back(odom_id_);
            robot_path_.x.emplace_back(current_position_(0));
            robot_path_.y.emplace_back(current_position_(1));
            robot_path_.size.emplace_back(odom_marker_size_);
            robot_path_.map.emplace_back(2);

            odom_pub_.publish(robot_path_);

            odom_id_++;
        }
    }

private:
    ros::Publisher landmark_pub_;
    ros::Publisher odom_pub_;
    ros::Subscriber aruco_sub_;
    ros::Subscriber odom_sub_;
    Eigen::Vector3d current_position_;
    Eigen::Vector3d landmark_position_;
    ekf_slam::LandmarksMap land_map_;
    ekf_slam::LandmarksMap robot_path_;

    int odom_id_ = 0;

    std::vector<int> marker_ids_;
    std::string publish_frame_;
    std::string what_map_;
    double threshold_;
    double odom_marker_size_;
    double odom_marker_size_threshold_;
    double land_map_threshold_;
    double size_;



    // message_filters::Subscriber<nav_msgs::Odometry::ConstPtr> odom_filter_sub_;
    // message_filters::Subscriber<cares_msgs::ArucoMarkers::ConstPtr> aruco_filter_sub_;
};


int main(int argc, char *argv[])
{
    // Initializing ROS node - This must be called before anything else ROS-related
    ros::init(argc, argv, "slam_control_node");
    // Create a ROS node handle
    ros::NodeHandle nh;

    PublishLandmarks pl = PublishLandmarks(nh);



    // ros::Rate rate(5);

    // while (ros::ok())
    // {
    //     rate.sleep();
    // }

    // Don't exit the program.
    // In this application all user callbacks will be called from within the ros::spin() call.
    // ros::spin() will not return until the node has been shutdown, either through a call to ros::shutdown() or a Ctrl-C.
    ros::spin();
    return 0;
}