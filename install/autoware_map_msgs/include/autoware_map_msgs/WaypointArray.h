// Generated by gencpp from file autoware_map_msgs/WaypointArray.msg
// DO NOT EDIT!


#ifndef AUTOWARE_MAP_MSGS_MESSAGE_WAYPOINTARRAY_H
#define AUTOWARE_MAP_MSGS_MESSAGE_WAYPOINTARRAY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <autoware_map_msgs/Waypoint.h>

namespace autoware_map_msgs
{
template <class ContainerAllocator>
struct WaypointArray_
{
  typedef WaypointArray_<ContainerAllocator> Type;

  WaypointArray_()
    : header()
    , data()  {
    }
  WaypointArray_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , data(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::autoware_map_msgs::Waypoint_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::autoware_map_msgs::Waypoint_<ContainerAllocator> >::other >  _data_type;
  _data_type data;





  typedef boost::shared_ptr< ::autoware_map_msgs::WaypointArray_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::autoware_map_msgs::WaypointArray_<ContainerAllocator> const> ConstPtr;

}; // struct WaypointArray_

typedef ::autoware_map_msgs::WaypointArray_<std::allocator<void> > WaypointArray;

typedef boost::shared_ptr< ::autoware_map_msgs::WaypointArray > WaypointArrayPtr;
typedef boost::shared_ptr< ::autoware_map_msgs::WaypointArray const> WaypointArrayConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::autoware_map_msgs::WaypointArray_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::autoware_map_msgs::WaypointArray_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::autoware_map_msgs::WaypointArray_<ContainerAllocator1> & lhs, const ::autoware_map_msgs::WaypointArray_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.data == rhs.data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::autoware_map_msgs::WaypointArray_<ContainerAllocator1> & lhs, const ::autoware_map_msgs::WaypointArray_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace autoware_map_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::autoware_map_msgs::WaypointArray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::autoware_map_msgs::WaypointArray_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::autoware_map_msgs::WaypointArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::autoware_map_msgs::WaypointArray_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autoware_map_msgs::WaypointArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autoware_map_msgs::WaypointArray_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::autoware_map_msgs::WaypointArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "54f028c2fe14b375cb6d4f9413e68c17";
  }

  static const char* value(const ::autoware_map_msgs::WaypointArray_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x54f028c2fe14b375ULL;
  static const uint64_t static_value2 = 0xcb6d4f9413e68c17ULL;
};

template<class ContainerAllocator>
struct DataType< ::autoware_map_msgs::WaypointArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "autoware_map_msgs/WaypointArray";
  }

  static const char* value(const ::autoware_map_msgs::WaypointArray_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::autoware_map_msgs::WaypointArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This consists of multiple Waypoint objects in a map. \n"
"\n"
"Header header\n"
"Waypoint[] data\n"
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
"MSG: autoware_map_msgs/Waypoint\n"
"# This represents a waypoint in a map. \n"
"\n"
"# Id of this Waypoint object\n"
"int32 waypoint_id\n"
"\n"
"# Id of Point that represents the position of this waypoint\n"
"int32 point_id\n"
"\n"
"# reference velocity of this waypoint. [km/h]\n"
"float64 velocity\n"
"\n"
"# describes whether vehicle must stop at this waypoint\n"
"# no_stop = 0, stop = 1\n"
"int32 stop_line\n"
"\n"
"# distance to left border of the belonging lane in [m]\n"
"float64 left_width\n"
"\n"
"# distance to right border of the belonging lane in [m]\n"
"float64 right_width\n"
"\n"
"# height limit for the vehicle to drive this waypoint [m]\n"
"float64 height\n"
;
  }

  static const char* value(const ::autoware_map_msgs::WaypointArray_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::autoware_map_msgs::WaypointArray_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WaypointArray_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::autoware_map_msgs::WaypointArray_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::autoware_map_msgs::WaypointArray_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "data[]" << std::endl;
    for (size_t i = 0; i < v.data.size(); ++i)
    {
      s << indent << "  data[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::autoware_map_msgs::Waypoint_<ContainerAllocator> >::stream(s, indent + "    ", v.data[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUTOWARE_MAP_MSGS_MESSAGE_WAYPOINTARRAY_H
