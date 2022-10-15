// Generated by gencpp from file cares_msgs/NavigationGoal.msg
// DO NOT EDIT!


#ifndef CARES_MSGS_MESSAGE_NAVIGATIONGOAL_H
#define CARES_MSGS_MESSAGE_NAVIGATIONGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace cares_msgs
{
template <class ContainerAllocator>
struct NavigationGoal_
{
  typedef NavigationGoal_<ContainerAllocator> Type;

  NavigationGoal_()
    : command(0)  {
    }
  NavigationGoal_(const ContainerAllocator& _alloc)
    : command(0)  {
  (void)_alloc;
    }



   typedef uint8_t _command_type;
  _command_type command;





  typedef boost::shared_ptr< ::cares_msgs::NavigationGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cares_msgs::NavigationGoal_<ContainerAllocator> const> ConstPtr;

}; // struct NavigationGoal_

typedef ::cares_msgs::NavigationGoal_<std::allocator<void> > NavigationGoal;

typedef boost::shared_ptr< ::cares_msgs::NavigationGoal > NavigationGoalPtr;
typedef boost::shared_ptr< ::cares_msgs::NavigationGoal const> NavigationGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cares_msgs::NavigationGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cares_msgs::NavigationGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::cares_msgs::NavigationGoal_<ContainerAllocator1> & lhs, const ::cares_msgs::NavigationGoal_<ContainerAllocator2> & rhs)
{
  return lhs.command == rhs.command;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::cares_msgs::NavigationGoal_<ContainerAllocator1> & lhs, const ::cares_msgs::NavigationGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace cares_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::cares_msgs::NavigationGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cares_msgs::NavigationGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cares_msgs::NavigationGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cares_msgs::NavigationGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cares_msgs::NavigationGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cares_msgs::NavigationGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cares_msgs::NavigationGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "36e1d21d1340e2a5e93f075b6457cbdf";
  }

  static const char* value(const ::cares_msgs::NavigationGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x36e1d21d1340e2a5ULL;
  static const uint64_t static_value2 = 0xe93f075b6457cbdfULL;
};

template<class ContainerAllocator>
struct DataType< ::cares_msgs::NavigationGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cares_msgs/NavigationGoal";
  }

  static const char* value(const ::cares_msgs::NavigationGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cares_msgs::NavigationGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#goal definition\n"
"uint8 command\n"
;
  }

  static const char* value(const ::cares_msgs::NavigationGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cares_msgs::NavigationGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.command);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NavigationGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cares_msgs::NavigationGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cares_msgs::NavigationGoal_<ContainerAllocator>& v)
  {
    s << indent << "command: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.command);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CARES_MSGS_MESSAGE_NAVIGATIONGOAL_H
