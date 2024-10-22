// Generated by gencpp from file gnss_comm/GnssEphemMsg.msg
// DO NOT EDIT!


#ifndef GNSS_COMM_MESSAGE_GNSSEPHEMMSG_H
#define GNSS_COMM_MESSAGE_GNSSEPHEMMSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <gnss_comm/GnssTimeMsg.h>
#include <gnss_comm/GnssTimeMsg.h>
#include <gnss_comm/GnssTimeMsg.h>

namespace gnss_comm
{
template <class ContainerAllocator>
struct GnssEphemMsg_
{
  typedef GnssEphemMsg_<ContainerAllocator> Type;

  GnssEphemMsg_()
    : sat(0)
    , ttr()
    , toe()
    , toc()
    , toe_tow(0.0)
    , week(0)
    , iode(0)
    , iodc(0)
    , health(0)
    , code(0)
    , ura(0.0)
    , A(0.0)
    , e(0.0)
    , i0(0.0)
    , omg(0.0)
    , OMG0(0.0)
    , M0(0.0)
    , delta_n(0.0)
    , OMG_dot(0.0)
    , i_dot(0.0)
    , cuc(0.0)
    , cus(0.0)
    , crc(0.0)
    , crs(0.0)
    , cic(0.0)
    , cis(0.0)
    , af0(0.0)
    , af1(0.0)
    , af2(0.0)
    , tgd0(0.0)
    , tgd1(0.0)
    , A_dot(0.0)
    , n_dot(0.0)  {
    }
  GnssEphemMsg_(const ContainerAllocator& _alloc)
    : sat(0)
    , ttr(_alloc)
    , toe(_alloc)
    , toc(_alloc)
    , toe_tow(0.0)
    , week(0)
    , iode(0)
    , iodc(0)
    , health(0)
    , code(0)
    , ura(0.0)
    , A(0.0)
    , e(0.0)
    , i0(0.0)
    , omg(0.0)
    , OMG0(0.0)
    , M0(0.0)
    , delta_n(0.0)
    , OMG_dot(0.0)
    , i_dot(0.0)
    , cuc(0.0)
    , cus(0.0)
    , crc(0.0)
    , crs(0.0)
    , cic(0.0)
    , cis(0.0)
    , af0(0.0)
    , af1(0.0)
    , af2(0.0)
    , tgd0(0.0)
    , tgd1(0.0)
    , A_dot(0.0)
    , n_dot(0.0)  {
  (void)_alloc;
    }



   typedef uint32_t _sat_type;
  _sat_type sat;

   typedef  ::gnss_comm::GnssTimeMsg_<ContainerAllocator>  _ttr_type;
  _ttr_type ttr;

   typedef  ::gnss_comm::GnssTimeMsg_<ContainerAllocator>  _toe_type;
  _toe_type toe;

   typedef  ::gnss_comm::GnssTimeMsg_<ContainerAllocator>  _toc_type;
  _toc_type toc;

   typedef double _toe_tow_type;
  _toe_tow_type toe_tow;

   typedef uint32_t _week_type;
  _week_type week;

   typedef uint32_t _iode_type;
  _iode_type iode;

   typedef uint32_t _iodc_type;
  _iodc_type iodc;

   typedef uint32_t _health_type;
  _health_type health;

   typedef uint32_t _code_type;
  _code_type code;

   typedef double _ura_type;
  _ura_type ura;

   typedef double _A_type;
  _A_type A;

   typedef double _e_type;
  _e_type e;

   typedef double _i0_type;
  _i0_type i0;

   typedef double _omg_type;
  _omg_type omg;

   typedef double _OMG0_type;
  _OMG0_type OMG0;

   typedef double _M0_type;
  _M0_type M0;

   typedef double _delta_n_type;
  _delta_n_type delta_n;

   typedef double _OMG_dot_type;
  _OMG_dot_type OMG_dot;

   typedef double _i_dot_type;
  _i_dot_type i_dot;

   typedef double _cuc_type;
  _cuc_type cuc;

   typedef double _cus_type;
  _cus_type cus;

   typedef double _crc_type;
  _crc_type crc;

   typedef double _crs_type;
  _crs_type crs;

   typedef double _cic_type;
  _cic_type cic;

   typedef double _cis_type;
  _cis_type cis;

   typedef double _af0_type;
  _af0_type af0;

   typedef double _af1_type;
  _af1_type af1;

   typedef double _af2_type;
  _af2_type af2;

   typedef double _tgd0_type;
  _tgd0_type tgd0;

   typedef double _tgd1_type;
  _tgd1_type tgd1;

   typedef double _A_dot_type;
  _A_dot_type A_dot;

   typedef double _n_dot_type;
  _n_dot_type n_dot;





  typedef boost::shared_ptr< ::gnss_comm::GnssEphemMsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gnss_comm::GnssEphemMsg_<ContainerAllocator> const> ConstPtr;

}; // struct GnssEphemMsg_

typedef ::gnss_comm::GnssEphemMsg_<std::allocator<void> > GnssEphemMsg;

typedef boost::shared_ptr< ::gnss_comm::GnssEphemMsg > GnssEphemMsgPtr;
typedef boost::shared_ptr< ::gnss_comm::GnssEphemMsg const> GnssEphemMsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gnss_comm::GnssEphemMsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gnss_comm::GnssEphemMsg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::gnss_comm::GnssEphemMsg_<ContainerAllocator1> & lhs, const ::gnss_comm::GnssEphemMsg_<ContainerAllocator2> & rhs)
{
  return lhs.sat == rhs.sat &&
    lhs.ttr == rhs.ttr &&
    lhs.toe == rhs.toe &&
    lhs.toc == rhs.toc &&
    lhs.toe_tow == rhs.toe_tow &&
    lhs.week == rhs.week &&
    lhs.iode == rhs.iode &&
    lhs.iodc == rhs.iodc &&
    lhs.health == rhs.health &&
    lhs.code == rhs.code &&
    lhs.ura == rhs.ura &&
    lhs.A == rhs.A &&
    lhs.e == rhs.e &&
    lhs.i0 == rhs.i0 &&
    lhs.omg == rhs.omg &&
    lhs.OMG0 == rhs.OMG0 &&
    lhs.M0 == rhs.M0 &&
    lhs.delta_n == rhs.delta_n &&
    lhs.OMG_dot == rhs.OMG_dot &&
    lhs.i_dot == rhs.i_dot &&
    lhs.cuc == rhs.cuc &&
    lhs.cus == rhs.cus &&
    lhs.crc == rhs.crc &&
    lhs.crs == rhs.crs &&
    lhs.cic == rhs.cic &&
    lhs.cis == rhs.cis &&
    lhs.af0 == rhs.af0 &&
    lhs.af1 == rhs.af1 &&
    lhs.af2 == rhs.af2 &&
    lhs.tgd0 == rhs.tgd0 &&
    lhs.tgd1 == rhs.tgd1 &&
    lhs.A_dot == rhs.A_dot &&
    lhs.n_dot == rhs.n_dot;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::gnss_comm::GnssEphemMsg_<ContainerAllocator1> & lhs, const ::gnss_comm::GnssEphemMsg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace gnss_comm

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::gnss_comm::GnssEphemMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gnss_comm::GnssEphemMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gnss_comm::GnssEphemMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gnss_comm::GnssEphemMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gnss_comm::GnssEphemMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gnss_comm::GnssEphemMsg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gnss_comm::GnssEphemMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b4346f99e431c870e392a438684c0fe8";
  }

  static const char* value(const ::gnss_comm::GnssEphemMsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb4346f99e431c870ULL;
  static const uint64_t static_value2 = 0xe392a438684c0fe8ULL;
};

template<class ContainerAllocator>
struct DataType< ::gnss_comm::GnssEphemMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gnss_comm/GnssEphemMsg";
  }

  static const char* value(const ::gnss_comm::GnssEphemMsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gnss_comm::GnssEphemMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This message contains GPS, Galileo and BeiDou ephemeris data\n"
"\n"
"uint32 sat\n"
"GnssTimeMsg ttr\n"
"GnssTimeMsg toe\n"
"GnssTimeMsg toc\n"
"float64 toe_tow\n"
"uint32 week\n"
"uint32 iode\n"
"uint32 iodc\n"
"uint32 health\n"
"uint32 code\n"
"float64 ura\n"
"float64 A\n"
"float64 e\n"
"float64 i0\n"
"float64 omg\n"
"float64 OMG0\n"
"float64 M0\n"
"float64 delta_n\n"
"float64 OMG_dot\n"
"float64 i_dot\n"
"float64 cuc\n"
"float64 cus\n"
"float64 crc\n"
"float64 crs\n"
"float64 cic\n"
"float64 cis\n"
"float64 af0\n"
"float64 af1\n"
"float64 af2\n"
"float64 tgd0\n"
"float64 tgd1\n"
"float64 A_dot\n"
"float64 n_dot\n"
"================================================================================\n"
"MSG: gnss_comm/GnssTimeMsg\n"
"# This message contains GNSS time expressed in the form of \n"
"# GNSS week number and time of week(in seconds)\n"
"\n"
"uint32 week\n"
"float64 tow\n"
;
  }

  static const char* value(const ::gnss_comm::GnssEphemMsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gnss_comm::GnssEphemMsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.sat);
      stream.next(m.ttr);
      stream.next(m.toe);
      stream.next(m.toc);
      stream.next(m.toe_tow);
      stream.next(m.week);
      stream.next(m.iode);
      stream.next(m.iodc);
      stream.next(m.health);
      stream.next(m.code);
      stream.next(m.ura);
      stream.next(m.A);
      stream.next(m.e);
      stream.next(m.i0);
      stream.next(m.omg);
      stream.next(m.OMG0);
      stream.next(m.M0);
      stream.next(m.delta_n);
      stream.next(m.OMG_dot);
      stream.next(m.i_dot);
      stream.next(m.cuc);
      stream.next(m.cus);
      stream.next(m.crc);
      stream.next(m.crs);
      stream.next(m.cic);
      stream.next(m.cis);
      stream.next(m.af0);
      stream.next(m.af1);
      stream.next(m.af2);
      stream.next(m.tgd0);
      stream.next(m.tgd1);
      stream.next(m.A_dot);
      stream.next(m.n_dot);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GnssEphemMsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gnss_comm::GnssEphemMsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gnss_comm::GnssEphemMsg_<ContainerAllocator>& v)
  {
    s << indent << "sat: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.sat);
    s << indent << "ttr: ";
    s << std::endl;
    Printer< ::gnss_comm::GnssTimeMsg_<ContainerAllocator> >::stream(s, indent + "  ", v.ttr);
    s << indent << "toe: ";
    s << std::endl;
    Printer< ::gnss_comm::GnssTimeMsg_<ContainerAllocator> >::stream(s, indent + "  ", v.toe);
    s << indent << "toc: ";
    s << std::endl;
    Printer< ::gnss_comm::GnssTimeMsg_<ContainerAllocator> >::stream(s, indent + "  ", v.toc);
    s << indent << "toe_tow: ";
    Printer<double>::stream(s, indent + "  ", v.toe_tow);
    s << indent << "week: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.week);
    s << indent << "iode: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.iode);
    s << indent << "iodc: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.iodc);
    s << indent << "health: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.health);
    s << indent << "code: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.code);
    s << indent << "ura: ";
    Printer<double>::stream(s, indent + "  ", v.ura);
    s << indent << "A: ";
    Printer<double>::stream(s, indent + "  ", v.A);
    s << indent << "e: ";
    Printer<double>::stream(s, indent + "  ", v.e);
    s << indent << "i0: ";
    Printer<double>::stream(s, indent + "  ", v.i0);
    s << indent << "omg: ";
    Printer<double>::stream(s, indent + "  ", v.omg);
    s << indent << "OMG0: ";
    Printer<double>::stream(s, indent + "  ", v.OMG0);
    s << indent << "M0: ";
    Printer<double>::stream(s, indent + "  ", v.M0);
    s << indent << "delta_n: ";
    Printer<double>::stream(s, indent + "  ", v.delta_n);
    s << indent << "OMG_dot: ";
    Printer<double>::stream(s, indent + "  ", v.OMG_dot);
    s << indent << "i_dot: ";
    Printer<double>::stream(s, indent + "  ", v.i_dot);
    s << indent << "cuc: ";
    Printer<double>::stream(s, indent + "  ", v.cuc);
    s << indent << "cus: ";
    Printer<double>::stream(s, indent + "  ", v.cus);
    s << indent << "crc: ";
    Printer<double>::stream(s, indent + "  ", v.crc);
    s << indent << "crs: ";
    Printer<double>::stream(s, indent + "  ", v.crs);
    s << indent << "cic: ";
    Printer<double>::stream(s, indent + "  ", v.cic);
    s << indent << "cis: ";
    Printer<double>::stream(s, indent + "  ", v.cis);
    s << indent << "af0: ";
    Printer<double>::stream(s, indent + "  ", v.af0);
    s << indent << "af1: ";
    Printer<double>::stream(s, indent + "  ", v.af1);
    s << indent << "af2: ";
    Printer<double>::stream(s, indent + "  ", v.af2);
    s << indent << "tgd0: ";
    Printer<double>::stream(s, indent + "  ", v.tgd0);
    s << indent << "tgd1: ";
    Printer<double>::stream(s, indent + "  ", v.tgd1);
    s << indent << "A_dot: ";
    Printer<double>::stream(s, indent + "  ", v.A_dot);
    s << indent << "n_dot: ";
    Printer<double>::stream(s, indent + "  ", v.n_dot);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GNSS_COMM_MESSAGE_GNSSEPHEMMSG_H
