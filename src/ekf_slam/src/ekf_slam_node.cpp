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

using namespace sensor_msgs;
using namespace message_filters;
// using namespace nav_msgs;
// using namespace cares_msgs;

class DrawMap
{
public:
    DrawMap(ros::NodeHandle &nh)
    {
        message_filters::Subscriber<cares_msgs::ArucoMarkers> image_sub(nh, "image", 1);
        message_filters::Subscriber<nav_msgs::Odometry> info_sub(nh, "camera_info", 1);
        TimeSynchronizer<cares_msgs::ArucoMarkers, nav_msgs::Odometry> sync(image_sub, info_sub, 10);
        sync.registerCallback(boost::bind(&DrawMap::callback, this, _1, _2));



        // message_filters::Subscriber<ArucoMarkers> image1_sub(nh, "image1", 1);
        // message_filters::Subscriber<Odometry> image2_sub(nh, "image2", 1);

        // typedef sync_policies::ApproximateTime<ArucoMarkers, Odometry> MySyncPolicy;
        // // ApproximateTime takes a queue size as its constructor argument, hence MySyncPolicy(10)
        // Synchronizer<MySyncPolicy> sync(MySyncPolicy(10), image1_sub, image2_sub);
        // sync.registerCallback(boost::bind(&DrawMap::callback, this, _1, _2));



        // message_filters::Subscriber<nav_msgs::Odometry::ConstPtr> odom_filter_sub_(nh, "odom", 1);
        // message_filters::Subscriber<cares_msgs::ArucoMarkers::ConstPtr> aruco_filter_sub_.subscribe(nh, "stereo_pair/markers", 1);
        // message_filters::TimeSynchronizer<nav_msgs::Odometry::ConstPtr, cares_msgs::ArucoMarkers> sync(odom_filter_sub_, aruco_filter_sub_, 10);
        // sync.registerCallback(std::bind(&PublishLandmarks::moveRobot, this,_1, _2));
    }

    /// \brief receive landmark positions

    
    void callback(const cares_msgs::ArucoMarkers::ConstPtr & image1, const nav_msgs::Odometry::ConstPtr& msg)
    {
    // Solve all of perception here...
    }

private:
};

int main(int argc, char **argv)
{
    ros::init(argc, argv, "vision_node");

    ros::NodeHandle nh;

    DrawMap draw_map(nh);

    

    ros::spin();

    return 0;
}