//! \file
/*! \brief Node for receiving the detected landmarks, check what kind of landmarks it is, and plot them to rviz

PUBLISHES:

    map_rviz (visualization_msgs::MarkerArray): publish the center, size, and type of map of the landmarks in a MarkerArray
    robot_path_rviz (visualization_msgs::MarkerArray): publish positions of odometer(x,y) in a MarkerArray

SUBSCRIBERS:

    /landmarks (ekf_slam/LandmarksMap): subscribe to landmarks topic
    /robot_path (ekf_slam/LandmarksMap): subscribe to robot_path topic
*/
#include "ros/ros.h"
#include <visualization_msgs/Marker.h>
#include <visualization_msgs/MarkerArray.h>
#include <ekf_slam/LandmarksMap.h>
#include <string>

//!  DrawMap class. 
/*!
Reads landmarks and odometry and publishes to rviz:
    1. Reads /landmaks topic
    2. Classify landmarks and publish to rviz
    3. Reads /robot_path topic
    4. Publish odometry to rviz
*/
class DrawMap
{
public:
    //!  \brief The constructor initializes the publishers (`map_pub_` and `robot_path_pub_`) and subscribers (`map_sub_` and `robot_path_sub_`).
    DrawMap(ros::NodeHandle &nh)
    {
        map_pub_ = nh.advertise<visualization_msgs::MarkerArray>("map_rviz", 100, true);
        map_sub_ = nh.subscribe("landmarks", 1000, &DrawMap::sub_landmark, this);
        robot_path_pub_ = nh.advertise<visualization_msgs::MarkerArray>("robot_path_rviz", 100, true);
        robot_path_sub_ = nh.subscribe("robot_path", 1000, &DrawMap::sub_robot_path, this);
    }

    /// \brief receive landmark positions
    void sub_landmark(const ekf_slam::LandmarksMap &msg)
    {
        if(!msg.x.empty())
        {
            visualization_msgs::MarkerArray marker_array;
            for (int i = 0; i < msg.x.size(); i++)
            {
                visualization_msgs::Marker marker_landmark = create_landmark_marker(msg.x.at(i),
                                                                                    msg.y.at(i),
                                                                                    msg.size.at(i),
                                                                                    msg.map.at(i),
                                                                                    "base_link");
                // double rotation_angle = 1.5708 + 1.5708 + 1.5708 + 1.5708 + 0.261799 + 0.261799 + 0.261799  + 0.261799;
                // visualization_msgs::Marker marker_landmark = create_landmark_marker(((-msg.x.at(i) * cos(rotation_angle))+ msg.y.at(i) * sin(rotation_angle)),
                //                                                                     ((-msg.x.at(i) * sin(rotation_angle))+ msg.y.at(i) * cos(rotation_angle)),
                //                                                                     msg.size.at(i),
                //                                                                     msg.map.at(i),
                //                                                                     "base_link");

                // X=(xcosθ+ysinθ) and and Y=(−xsinθ+ycosθ).
                // X=((msg.x.at(i) * cos(0.785398))+ msg.y.at(i) * sin(0.785398))

                // Y=((msg.x.at(i) * sin(0.785398))+ msg.y.at(i) * cos(0.785398))

                // 0.785398 = 45
                // 1.5708 = 90
                // 0.261799 = 15
                // 3.14159 = 180

                marker_array.markers.push_back(marker_landmark);
                marker_array.markers.push_back(create_landmark_marker(0.0, 3.0, 0.2, 3, "base_link"));
                marker_array.markers.push_back(create_landmark_marker(1.0, 3.0, 0.2, 3, "base_link"));
                marker_array.markers.push_back(create_landmark_marker(2.0, 3.0, 0.2, 3, "base_link"));
                marker_array.markers.push_back(create_landmark_marker(3.0, 3.0, 0.2, 3, "base_link"));
                marker_array.markers.push_back(create_landmark_marker(3.0, 2.0, 0.2, 3, "base_link"));
            }
            map_pub_.publish(marker_array);
            ros::spinOnce();
        }
    }

    /// \brief receive robot paths positions
    void sub_robot_path(const ekf_slam::LandmarksMap &msg)
    {
        if(!msg.x.empty())
        {
            visualization_msgs::MarkerArray marker_array;
            for (int i = 0; i < msg.x.size(); i++)
            {
                visualization_msgs::Marker marker_landmark = create_landmark_marker(msg.x.at(i),
                                                                                    msg.y.at(i),
                                                                                    msg.size.at(i),
                                                                                    msg.map.at(i),
                                                                                    "base_link");
                marker_array.markers.push_back(marker_landmark);
            }
            robot_path_pub_.publish(marker_array);
            ros::spinOnce();
        }
    }

    /// \brief create markers
    visualization_msgs::Marker create_landmark_marker(double x, double y, double size, int type_of_map, std::string in_frame)
    {
        visualization_msgs::Marker marker;
        marker.header.frame_id = in_frame;
        marker.header.stamp = ros::Time(0);

        
        marker.id = marker_id_;
        marker_id_++;


        uint32_t shape = visualization_msgs::Marker::CUBE;

        switch (type_of_map)
        {
        case 1:
            shape = visualization_msgs::Marker::CUBE;
            marker.ns = "map_rviz";
            marker.color.r = 1.0;
            marker.color.g = 0;
            marker.color.b = 0;
            marker.scale.z = 1.0;
            // 5 Hz publish rate
            marker.lifetime = ros::Duration(1 / 4.0);
            break;
        case 2:
            shape = visualization_msgs::Marker::SPHERE;
            marker.ns = "robot_path_rviz";
            marker.color.r = 0;
            marker.color.g = 1.0;
            marker.color.b = 0;
            marker.scale.z = size;
            // 5 Hz publish rate
            marker.lifetime = ros::Duration(1000);
            break;
        case 3:
            shape = visualization_msgs::Marker::SPHERE;
            marker.ns = "ground_truth_rviz";
            marker.color.r = 0;
            marker.color.g = 0;
            marker.color.b = 1.0;
            marker.scale.z = 2.0;
            // 5 Hz publish rate
            marker.lifetime = ros::Duration(1000);
            break;
        
        default:
            break;
        };

        marker.type = shape;

        marker.action = visualization_msgs::Marker::ADD;

        marker.pose.position.x = x;
        marker.pose.position.y = y;
        marker.pose.position.z = 0.1;
        marker.pose.orientation.x = 0.0;
        marker.pose.orientation.y = 0.0;
        marker.pose.orientation.z = 0.0;
        marker.pose.orientation.w = 1.0;

        marker.scale.x = size;
        marker.scale.y = size;

        

        // if (what_map_ == "measurements")
        // {
        //     marker.scale.z = 0.2;
        // }
        // else if (what_map_ == "groundtruth_map")
        // {
        //     marker.scale.z = 0.4;
        // }
        // else
        // {
        //     marker.scale.z = 0.3;
        // }

        


        // if (what_map_ == "measurements")
        // {
        //     marker.color.g = 1.0;
        //     marker.color.b = 0.0;
        // }
        // else if (what_map_ == "groundtruth_map")
        // {
        //     marker.color.g = 0.0;
        //     marker.color.b = 1.0;
        // }
        // else
        // {
        //     marker.color.g = 1.0;
        //     marker.color.b = 1.0;
        // }

        
        marker.color.a = 1.0;

        

        return marker;
    }

private:
    ros::Publisher map_pub_;
    ros::Subscriber map_sub_;
    ros::Publisher robot_path_pub_;
    ros::Subscriber robot_path_sub_;

    int marker_id_ = 0;
    std::string publish_frame_;
    std::string what_map_;
};

int main(int argc, char **argv)
{
    // Initializing ROS node - This must be called before anything else ROS-related
    ros::init(argc, argv, "draw_map_node");

    // Create a ROS node handle
    ros::NodeHandle nh;

    DrawMap draw_map(nh);

    ros::spin();
    return 0;
}