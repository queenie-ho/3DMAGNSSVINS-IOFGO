// Generated by gencpp from file gnss_comm/StampedFloat64Array.msg
// DO NOT EDIT!


#ifndef GNSS_COMM_MESSAGE_STAMPEDFLOAT64ARRAY_H
#define GNSS_COMM_MESSAGE_STAMPEDFLOAT64ARRAY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace gnss_comm
{
template <class ContainerAllocator>
struct StampedFloat64Array_
{
  typedef StampedFloat64Array_<ContainerAllocator> Type;

  StampedFloat64Array_()
    : header()
    , data()  {
    }
  StampedFloat64Array_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , data(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _data_type;
  _data_type data;





  typedef boost::shared_ptr< ::gnss_comm::StampedFloat64Array_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gnss_comm::StampedFloat64Array_<ContainerAllocator> const> ConstPtr;

}; // struct StampedFloat64Array_

typedef ::gnss_comm::StampedFloat64Array_<std::allocator<void> > StampedFloat64Array;

typedef boost::shared_ptr< ::gnss_comm::StampedFloat64Array > StampedFloat64ArrayPtr;
typedef boost::shared_ptr< ::gnss_comm::StampedFloat64Array const> StampedFloat64ArrayConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gnss_comm::StampedFloat64Array_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gnss_comm::StampedFloat64Array_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::gnss_comm::StampedFloat64Array_<ContainerAllocator1> & lhs, const ::gnss_comm::StampedFloat64Array_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.data == rhs.data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::gnss_comm::StampedFloat64Array_<ContainerAllocator1> & lhs, const ::gnss_comm::StampedFloat64Array_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace gnss_comm

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::gnss_comm::StampedFloat64Array_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gnss_comm::StampedFloat64Array_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gnss_comm::StampedFloat64Array_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gnss_comm::StampedFloat64Array_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gnss_comm::StampedFloat64Array_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gnss_comm::StampedFloat64Array_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gnss_comm::StampedFloat64Array_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fb60495edd59d3fcf90e173153ae8a9a";
  }

  static const char* value(const ::gnss_comm::StampedFloat64Array_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfb60495edd59d3fcULL;
  static const uint64_t static_value2 = 0xf90e173153ae8a9aULL;
};

template<class ContainerAllocator>
struct DataType< ::gnss_comm::StampedFloat64Array_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gnss_comm/StampedFloat64Array";
  }

  static const char* value(const ::gnss_comm::StampedFloat64Array_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gnss_comm::StampedFloat64Array_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# A list of float values with timestamp\n"
"\n"
"Header header\n"
"float64[] data\n"
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

  static const char* value(const ::gnss_comm::StampedFloat64Array_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gnss_comm::StampedFloat64Array_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StampedFloat64Array_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gnss_comm::StampedFloat64Array_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gnss_comm::StampedFloat64Array_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "data[]" << std::endl;
    for (size_t i = 0; i < v.data.size(); ++i)
    {
      s << indent << "  data[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.data[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // GNSS_COMM_MESSAGE_STAMPEDFLOAT64ARRAY_H
