// Generated by gencpp from file ekf_slam/LandmarksMap.msg
// DO NOT EDIT!


#ifndef EKF_SLAM_MESSAGE_LANDMARKSMAP_H
#define EKF_SLAM_MESSAGE_LANDMARKSMAP_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ekf_slam
{
template <class ContainerAllocator>
struct LandmarksMap_
{
  typedef LandmarksMap_<ContainerAllocator> Type;

  LandmarksMap_()
    : x()
    , y()
    , size()
    , id()
    , map()  {
    }
  LandmarksMap_(const ContainerAllocator& _alloc)
    : x(_alloc)
    , y(_alloc)
    , size(_alloc)
    , id(_alloc)
    , map(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _x_type;
  _x_type x;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _y_type;
  _y_type y;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _size_type;
  _size_type size;

   typedef std::vector<int64_t, typename ContainerAllocator::template rebind<int64_t>::other >  _id_type;
  _id_type id;

   typedef std::vector<int64_t, typename ContainerAllocator::template rebind<int64_t>::other >  _map_type;
  _map_type map;





  typedef boost::shared_ptr< ::ekf_slam::LandmarksMap_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ekf_slam::LandmarksMap_<ContainerAllocator> const> ConstPtr;

}; // struct LandmarksMap_

typedef ::ekf_slam::LandmarksMap_<std::allocator<void> > LandmarksMap;

typedef boost::shared_ptr< ::ekf_slam::LandmarksMap > LandmarksMapPtr;
typedef boost::shared_ptr< ::ekf_slam::LandmarksMap const> LandmarksMapConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ekf_slam::LandmarksMap_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ekf_slam::LandmarksMap_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ekf_slam::LandmarksMap_<ContainerAllocator1> & lhs, const ::ekf_slam::LandmarksMap_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.size == rhs.size &&
    lhs.id == rhs.id &&
    lhs.map == rhs.map;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ekf_slam::LandmarksMap_<ContainerAllocator1> & lhs, const ::ekf_slam::LandmarksMap_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ekf_slam

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ekf_slam::LandmarksMap_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ekf_slam::LandmarksMap_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ekf_slam::LandmarksMap_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ekf_slam::LandmarksMap_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ekf_slam::LandmarksMap_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ekf_slam::LandmarksMap_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ekf_slam::LandmarksMap_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e14fd09077d5b90e93fc3b260d94d59d";
  }

  static const char* value(const ::ekf_slam::LandmarksMap_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe14fd09077d5b90eULL;
  static const uint64_t static_value2 = 0x93fc3b260d94d59dULL;
};

template<class ContainerAllocator>
struct DataType< ::ekf_slam::LandmarksMap_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ekf_slam/LandmarksMap";
  }

  static const char* value(const ::ekf_slam::LandmarksMap_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ekf_slam::LandmarksMap_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64[] x # a list of x coordinate of circle center x\n"
"float64[] y # a list of y coordinate of circle center y\n"
"float64[] size\n"
"int64[] id # id of this landmark (data association)\n"
"int64[] map # type of map\n"
;
  }

  static const char* value(const ::ekf_slam::LandmarksMap_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ekf_slam::LandmarksMap_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.size);
      stream.next(m.id);
      stream.next(m.map);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LandmarksMap_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ekf_slam::LandmarksMap_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ekf_slam::LandmarksMap_<ContainerAllocator>& v)
  {
    s << indent << "x[]" << std::endl;
    for (size_t i = 0; i < v.x.size(); ++i)
    {
      s << indent << "  x[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.x[i]);
    }
    s << indent << "y[]" << std::endl;
    for (size_t i = 0; i < v.y.size(); ++i)
    {
      s << indent << "  y[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.y[i]);
    }
    s << indent << "size[]" << std::endl;
    for (size_t i = 0; i < v.size.size(); ++i)
    {
      s << indent << "  size[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.size[i]);
    }
    s << indent << "id[]" << std::endl;
    for (size_t i = 0; i < v.id.size(); ++i)
    {
      s << indent << "  id[" << i << "]: ";
      Printer<int64_t>::stream(s, indent + "  ", v.id[i]);
    }
    s << indent << "map[]" << std::endl;
    for (size_t i = 0; i < v.map.size(); ++i)
    {
      s << indent << "  map[" << i << "]: ";
      Printer<int64_t>::stream(s, indent + "  ", v.map[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // EKF_SLAM_MESSAGE_LANDMARKSMAP_H