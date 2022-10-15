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
        // message_filters::Subscriber<cares_msgs::ArucoMarkers> image_sub(nh, "image", 1);
        // message_filters::Subscriber<nav_msgs::Odometry> info_sub(nh, "camera_info", 1);
        // TimeSynchronizer<cares_msgs::ArucoMarkers, nav_msgs::Odometry> sync(image_sub, info_sub, 10);
        // sync.registerCallback(boost::bind(&DrawMap::callback, this, _1, _2));

        // GOODish ApproximateTime
        message_filters::Subscriber<cares_msgs::ArucoMarkers> aruco_sub_(nh, "stereo_pair/markers", 100);
        message_filters::Subscriber<nav_msgs::Odometry> odom_sub_(nh, "odom", 100);
        typedef message_filters::sync_policies::ApproximateTime<cares_msgs::ArucoMarkers, nav_msgs::Odometry> MySyncPolicy;
        // ApproximateTime takes a queue size as its constructor argument, hence MySyncPolicy(10)
        message_filters::Synchronizer<MySyncPolicy> sync(MySyncPolicy(100), aruco_sub_, odom_sub_);
        sync.registerCallback(boost::bind(&EkfSlam::callback, this, _1, _2));

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

    /// \brief receive a vector of Eigen::VectorXd and returns a Eigen::VectorXd with the menas of each element index.
    Eigen::VectorXd EigenMeans(std::vector<Eigen::VectorXd> &data)
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
    double ComputeEigenCovariance(int &x, int &y, std::vector<Eigen::VectorXd> &data)
    {
        Eigen::VectorXd componentMeans = EigenMeans(data);

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
    void callback(const cares_msgs::ArucoMarkers::ConstPtr &image1, const nav_msgs::Odometry::ConstPtr &msg)
    {
        std::cout << "Callback X: " << msg->pose.pose.position.x << std::endl;
    }

private:
};

int main(int argc, char **argv)
{
    ros::init(argc, argv, "vision_node");

    ros::NodeHandle nh;

    EkfSlam ekf_slam(nh);

    ros::spin();

    return 0;
}