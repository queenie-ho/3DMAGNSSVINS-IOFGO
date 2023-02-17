// Generated by gencpp from file gnss_comm/GnssObsMsg.msg
// DO NOT EDIT!


#ifndef GNSS_COMM_MESSAGE_GNSSOBSMSG_H
#define GNSS_COMM_MESSAGE_GNSSOBSMSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <gnss_comm/GnssTimeMsg.h>

namespace gnss_comm
{
template <class ContainerAllocator>
struct GnssObsMsg_
{
  typedef GnssObsMsg_<ContainerAllocator> Type;

  GnssObsMsg_()
    : time()
    , sat(0)
    , freqs()
    , CN0()
    , LLI()
    , code()
    , psr()
    , psr_std()
    , cp()
    , cp_std()
    , dopp()
    , dopp_std()
    , status()  {
    }
  GnssObsMsg_(const ContainerAllocator& _alloc)
    : time(_alloc)
    , sat(0)
    , freqs(_alloc)
    , CN0(_alloc)
    , LLI(_alloc)
    , code(_alloc)
    , psr(_alloc)
    , psr_std(_alloc)
    , cp(_alloc)
    , cp_std(_alloc)
    , dopp(_alloc)
    , dopp_std(_alloc)
    , status(_alloc)  {
  (void)_alloc;
    }



   typedef  ::gnss_comm::GnssTimeMsg_<ContainerAllocator>  _time_type;
  _time_type time;

   typedef uint32_t _sat_type;
  _sat_type sat;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _freqs_type;
  _freqs_type freqs;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _CN0_type;
  _CN0_type CN0;

   typedef std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  _LLI_type;
  _LLI_type LLI;

   typedef std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  _code_type;
  _code_type code;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _psr_type;
  _psr_type psr;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _psr_std_type;
  _psr_std_type psr_std;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _cp_type;
  _cp_type cp;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _cp_std_type;
  _cp_std_type cp_std;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _dopp_type;
  _dopp_type dopp;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _dopp_std_type;
  _dopp_std_type dopp_std;

   typedef std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  _status_type;
  _status_type status;





  typedef boost::shared_ptr< ::gnss_comm::GnssObsMsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gnss_comm::GnssObsMsg_<ContainerAllocator> const> ConstPtr;

}; // struct GnssObsMsg_

typedef ::gnss_comm::GnssObsMsg_<std::allocator<void> > GnssObsMsg;

typedef boost::shared_ptr< ::gnss_comm::GnssObsMsg > GnssObsMsgPtr;
typedef boost::shared_ptr< ::gnss_comm::GnssObsMsg const> GnssObsMsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gnss_comm::GnssObsMsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gnss_comm::GnssObsMsg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::gnss_comm::GnssObsMsg_<ContainerAllocator1> & lhs, const ::gnss_comm::GnssObsMsg_<ContainerAllocator2> & rhs)
{
  return lhs.time == rhs.time &&
    lhs.sat == rhs.sat &&
    lhs.freqs == rhs.freqs &&
    lhs.CN0 == rhs.CN0 &&
    lhs.LLI == rhs.LLI &&
    lhs.code == rhs.code &&
    lhs.psr == rhs.psr &&
    lhs.psr_std == rhs.psr_std &&
    lhs.cp == rhs.cp &&
    lhs.cp_std == rhs.cp_std &&
    lhs.dopp == rhs.dopp &&
    lhs.dopp_std == rhs.dopp_std &&
    lhs.status == rhs.status;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::gnss_comm::GnssObsMsg_<ContainerAllocator1> & lhs, const ::gnss_comm::GnssObsMsg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace gnss_comm

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::gnss_comm::GnssObsMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gnss_comm::GnssObsMsg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gnss_comm::GnssObsMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gnss_comm::GnssObsMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gnss_comm::GnssObsMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gnss_comm::GnssObsMsg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gnss_comm::GnssObsMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1989908f2a8a920a7a9e69d6804fb7e0";
  }

  static const char* value(const ::gnss_comm::GnssObsMsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1989908f2a8a920aULL;
  static const uint64_t static_value2 = 0x7a9e69d6804fb7e0ULL;
};

template<class ContainerAllocator>
struct DataType< ::gnss_comm::GnssObsMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gnss_comm/GnssObsMsg";
  }

  static const char* value(const ::gnss_comm::GnssObsMsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gnss_comm::GnssObsMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This message contains one-epoch measurements from one single satellite\n"
"\n"
"GnssTimeMsg time    # measurement time\n"
"uint32 sat          # satellite ID (define by `sat_no` function in `gnss_utility.hpp`)\n"
"float64[] freqs     # observed frequencies [Hz]\n"
"float64[] CN0       # carrier-to-noise density ratio (signal strength) [dB-Hz]\n"
"uint8[] LLI         # lost-lock indicator (1=lost)\n"
"uint8[] code        # channel code\n"
"float64[] psr       # pseudorange measurement [m]\n"
"float64[] psr_std   # pseudorange standard deviation [m]\n"
"float64[] cp        # carrier phase measurement [cycle]\n"
"float64[] cp_std    # carrier phase standard deviation [cycle]\n"
"float64[] dopp      # Doppler measurement [Hz]\n"
"float64[] dopp_std  # Doppler standard deviation [Hz]\n"
"# tracking status. bit_0:psr valid, bit_1:cp valid, \n"
"# bit_2:half cp valid, bit_3:half cp subtracted\n"
"uint8[]   status    \n"
"================================================================================\n"
"MSG: gnss_comm/GnssTimeMsg\n"
"# This message contains GNSS time expressed in the form of \n"
"# GNSS week number and time of week(in seconds)\n"
"\n"
"uint32 week\n"
"float64 tow\n"
;
  }

  static const char* value(const ::gnss_comm::GnssObsMsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gnss_comm::GnssObsMsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.time);
      stream.next(m.sat);
      stream.next(m.freqs);
      stream.next(m.CN0);
      stream.next(m.LLI);
      stream.next(m.code);
      stream.next(m.psr);
      stream.next(m.psr_std);
      stream.next(m.cp);
      stream.next(m.cp_std);
      stream.next(m.dopp);
      stream.next(m.dopp_std);
      stream.next(m.status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GnssObsMsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gnss_comm::GnssObsMsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gnss_comm::GnssObsMsg_<ContainerAllocator>& v)
  {
    s << indent << "time: ";
    s << std::endl;
    Printer< ::gnss_comm::GnssTimeMsg_<ContainerAllocator> >::stream(s, indent + "  ", v.time);
    s << indent << "sat: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.sat);
    s << indent << "freqs[]" << std::endl;
    for (size_t i = 0; i < v.freqs.size(); ++i)
    {
      s << indent << "  freqs[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.freqs[i]);
    }
    s << indent << "CN0[]" << std::endl;
    for (size_t i = 0; i < v.CN0.size(); ++i)
    {
      s << indent << "  CN0[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.CN0[i]);
    }
    s << indent << "LLI[]" << std::endl;
    for (size_t i = 0; i < v.LLI.size(); ++i)
    {
      s << indent << "  LLI[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.LLI[i]);
    }
    s << indent << "code[]" << std::endl;
    for (size_t i = 0; i < v.code.size(); ++i)
    {
      s << indent << "  code[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.code[i]);
    }
    s << indent << "psr[]" << std::endl;
    for (size_t i = 0; i < v.psr.size(); ++i)
    {
      s << indent << "  psr[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.psr[i]);
    }
    s << indent << "psr_std[]" << std::endl;
    for (size_t i = 0; i < v.psr_std.size(); ++i)
    {
      s << indent << "  psr_std[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.psr_std[i]);
    }
    s << indent << "cp[]" << std::endl;
    for (size_t i = 0; i < v.cp.size(); ++i)
    {
      s << indent << "  cp[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.cp[i]);
    }
    s << indent << "cp_std[]" << std::endl;
    for (size_t i = 0; i < v.cp_std.size(); ++i)
    {
      s << indent << "  cp_std[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.cp_std[i]);
    }
    s << indent << "dopp[]" << std::endl;
    for (size_t i = 0; i < v.dopp.size(); ++i)
    {
      s << indent << "  dopp[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.dopp[i]);
    }
    s << indent << "dopp_std[]" << std::endl;
    for (size_t i = 0; i < v.dopp_std.size(); ++i)
    {
      s << indent << "  dopp_std[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.dopp_std[i]);
    }
    s << indent << "status[]" << std::endl;
    for (size_t i = 0; i < v.status.size(); ++i)
    {
      s << indent << "  status[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.status[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // GNSS_COMM_MESSAGE_GNSSOBSMSG_H
