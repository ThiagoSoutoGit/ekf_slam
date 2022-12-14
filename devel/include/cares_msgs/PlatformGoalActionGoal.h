// Generated by gencpp from file cares_msgs/PlatformGoalActionGoal.msg
// DO NOT EDIT!


#ifndef CARES_MSGS_MESSAGE_PLATFORMGOALACTIONGOAL_H
#define CARES_MSGS_MESSAGE_PLATFORMGOALACTIONGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <actionlib_msgs/GoalID.h>
#include <cares_msgs/PlatformGoalGoal.h>

namespace cares_msgs
{
template <class ContainerAllocator>
struct PlatformGoalActionGoal_
{
  typedef PlatformGoalActionGoal_<ContainerAllocator> Type;

  PlatformGoalActionGoal_()
    : header()
    , goal_id()
    , goal()  {
    }
  PlatformGoalActionGoal_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , goal_id(_alloc)
    , goal(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::actionlib_msgs::GoalID_<ContainerAllocator>  _goal_id_type;
  _goal_id_type goal_id;

   typedef  ::cares_msgs::PlatformGoalGoal_<ContainerAllocator>  _goal_type;
  _goal_type goal;





  typedef boost::shared_ptr< ::cares_msgs::PlatformGoalActionGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cares_msgs::PlatformGoalActionGoal_<ContainerAllocator> const> ConstPtr;

}; // struct PlatformGoalActionGoal_

typedef ::cares_msgs::PlatformGoalActionGoal_<std::allocator<void> > PlatformGoalActionGoal;

typedef boost::shared_ptr< ::cares_msgs::PlatformGoalActionGoal > PlatformGoalActionGoalPtr;
typedef boost::shared_ptr< ::cares_msgs::PlatformGoalActionGoal const> PlatformGoalActionGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cares_msgs::PlatformGoalActionGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cares_msgs::PlatformGoalActionGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::cares_msgs::PlatformGoalActionGoal_<ContainerAllocator1> & lhs, const ::cares_msgs::PlatformGoalActionGoal_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.goal_id == rhs.goal_id &&
    lhs.goal == rhs.goal;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::cares_msgs::PlatformGoalActionGoal_<ContainerAllocator1> & lhs, const ::cares_msgs::PlatformGoalActionGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace cares_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::cares_msgs::PlatformGoalActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cares_msgs::PlatformGoalActionGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cares_msgs::PlatformGoalActionGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cares_msgs::PlatformGoalActionGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cares_msgs::PlatformGoalActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cares_msgs::PlatformGoalActionGoal_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cares_msgs::PlatformGoalActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a0a0331a9543ff4e965d81671a23a04e";
  }

  static const char* value(const ::cares_msgs::PlatformGoalActionGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa0a0331a9543ff4eULL;
  static const uint64_t static_value2 = 0x965d81671a23a04eULL;
};

template<class ContainerAllocator>
struct DataType< ::cares_msgs::PlatformGoalActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cares_msgs/PlatformGoalActionGoal";
  }

  static const char* value(const ::cares_msgs::PlatformGoalActionGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cares_msgs::PlatformGoalActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalID goal_id\n"
"PlatformGoalGoal goal\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: actionlib_msgs/GoalID\n"
"# The stamp should store the time at which this goal was requested.\n"
"# It is used by an action server when it tries to preempt all\n"
"# goals that were requested before a certain time\n"
"time stamp\n"
"\n"
"# The id provides a way to associate feedback and\n"
"# result message with specific goal requests. The id\n"
"# specified must be unique.\n"
"string id\n"
"\n"
"\n"
"================================================================================\n"
"MSG: cares_msgs/PlatformGoalGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#goal definition\n"
"\n"
"# Desired pose - frame_id sets which world space to move in\n"
"geometry_msgs/PoseStamped target_pose\n"
"\n"
"# End Effector ID to move to target_pose\n"
"std_msgs/String link_id\n"
"\n"
"# Arm command\n"
"# Enumeration 0 - 255\n"
"uint8 STOP      = 0\n"
"uint8 MOVE      = 1\n"
"uint8 RESET     = 2\n"
"uint8 ACTUATE   = 3\n"
"uint8 command\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/PoseStamped\n"
"# A Pose with reference coordinate frame and timestamp\n"
"Header header\n"
"Pose pose\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/String\n"
"string data\n"
;
  }

  static const char* value(const ::cares_msgs::PlatformGoalActionGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cares_msgs::PlatformGoalActionGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.goal_id);
      stream.next(m.goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PlatformGoalActionGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cares_msgs::PlatformGoalActionGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cares_msgs::PlatformGoalActionGoal_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "goal_id: ";
    s << std::endl;
    Printer< ::actionlib_msgs::GoalID_<ContainerAllocator> >::stream(s, indent + "  ", v.goal_id);
    s << indent << "goal: ";
    s << std::endl;
    Printer< ::cares_msgs::PlatformGoalGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CARES_MSGS_MESSAGE_PLATFORMGOALACTIONGOAL_H
