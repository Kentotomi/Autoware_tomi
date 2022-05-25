// Generated by gencpp from file autoware_msgs/SteerCmd.msg
// DO NOT EDIT!


#ifndef AUTOWARE_MSGS_MESSAGE_STEERCMD_H
#define AUTOWARE_MSGS_MESSAGE_STEERCMD_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace autoware_msgs
{
template <class ContainerAllocator>
struct SteerCmd_
{
  typedef SteerCmd_<ContainerAllocator> Type;

  SteerCmd_()
    : header()
    , steer(0)  {
    }
  SteerCmd_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , steer(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef int32_t _steer_type;
  _steer_type steer;





  typedef boost::shared_ptr< ::autoware_msgs::SteerCmd_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::autoware_msgs::SteerCmd_<ContainerAllocator> const> ConstPtr;

}; // struct SteerCmd_

typedef ::autoware_msgs::SteerCmd_<std::allocator<void> > SteerCmd;

typedef boost::shared_ptr< ::autoware_msgs::SteerCmd > SteerCmdPtr;
typedef boost::shared_ptr< ::autoware_msgs::SteerCmd const> SteerCmdConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::autoware_msgs::SteerCmd_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::autoware_msgs::SteerCmd_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::autoware_msgs::SteerCmd_<ContainerAllocator1> & lhs, const ::autoware_msgs::SteerCmd_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.steer == rhs.steer;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::autoware_msgs::SteerCmd_<ContainerAllocator1> & lhs, const ::autoware_msgs::SteerCmd_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace autoware_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::autoware_msgs::SteerCmd_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::autoware_msgs::SteerCmd_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::autoware_msgs::SteerCmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::autoware_msgs::SteerCmd_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autoware_msgs::SteerCmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autoware_msgs::SteerCmd_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::autoware_msgs::SteerCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a78f3e86a2d39111b18378b6ff89a1a1";
  }

  static const char* value(const ::autoware_msgs::SteerCmd_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa78f3e86a2d39111ULL;
  static const uint64_t static_value2 = 0xb18378b6ff89a1a1ULL;
};

template<class ContainerAllocator>
struct DataType< ::autoware_msgs::SteerCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "autoware_msgs/SteerCmd";
  }

  static const char* value(const ::autoware_msgs::SteerCmd_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::autoware_msgs::SteerCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"int32 steer\n"
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
;
  }

  static const char* value(const ::autoware_msgs::SteerCmd_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::autoware_msgs::SteerCmd_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.steer);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SteerCmd_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::autoware_msgs::SteerCmd_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::autoware_msgs::SteerCmd_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "steer: ";
    Printer<int32_t>::stream(s, indent + "  ", v.steer);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUTOWARE_MSGS_MESSAGE_STEERCMD_H
