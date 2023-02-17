// Generated by gencpp from file gnss_comm/GnssGloEphemMsg.msg
// DO NOT EDIT!


#ifndef GNSS_COMM_MESSAGE_GNSSGLOEPHEMMSG_H
#define GNSS_COMM_MESSAGE_GNSSGLOEPHEMMSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <gnss_comm/GnssTimeMsg.h>
#include <gnss_comm/GnssTimeMsg.h>

namespace gnss_comm
{
template <class ContainerAllocator>
struct GnssGloEphemMsg_
{
  typedef GnssGloEphemMsg_<ContainerAllocator> Type;

  GnssGloEphemMsg_()
    : sat(0)
    , ttr()
    , toe()
    , freqo(0)
    , iode(0)
    , health(0)
    , age(0)
    , ura(0.0)
    , pos_x(0.0)
    , pos_y(0.0)
    , pos_z(0.0)
    , vel_x(0.0)
    , vel_y(0.0)
    , vel_z(0.0)
    , acc_x(0.0)
    , acc_y(0.0)
    , acc_z(0.0)
    , tau_n(0.0)
    , gamma(0.0)
    , delta_tau_n(0.0)  {
    }
  GnssGloEphemMsg_(const ContainerAllocator& _alloc)
    : sat(0)
    , ttr(_alloc)
    , toe(_alloc)
    , freqo(0)
    , iode(0)
    , health(0)
    , age(0)
    , ura(0.0)
    , pos_x(0.0)
    , pos_y(0.0)
    , pos_z(0.0)
    , vel_x(0.0)
    , vel_y(0.0)
    , vel_z(0.0)
    , acc_x(0.0)
    , acc_y(0.0)
    , acc_z(0.0)
    , tau_n(0.0)
    , gamma(0.0)
    , delta_tau_n(0.0)  {
  (void)_alloc;
    }



   typedef uint32_t _sat_type;
  _sat_type sat;

   typedef  ::gnss_comm::GnssTimeMsg_<ContainerAllocator>  _ttr_type;
  _ttr_type ttr;

   typedef  ::gnss_comm::GnssTimeMsg_<ContainerAllocator>  _toe_type;
  _toe_type toe;

   typedef int32_t _freqo_type;
  _freqo_type freqo;

   typedef uint32_t _iode_type;
  _iode_type iode;

   typedef uint32_t _health_type;
  _health_type health;

   typedef uint32_t _age_type;
  _age_type age;

   typedef double _ura_type;
  _ura_type ura;

   typedef double _pos_x_type;
  _pos_x_type pos_x;

   typedef double _pos_y_type;
  _pos_y_type pos_y;

   typedef double _pos_z_type;
  _pos_z_type pos_z;

   typedef double _vel_x_type;
  _vel_x_type vel_x;

   typedef double _vel_y_type;
  _vel_y_type vel_y;

   typedef double _vel_z_type;
  _vel_z_type vel_z;

   typedef double _acc_x_type;
  _acc_x_type acc_x;

   typedef double _acc_y_type;
  _acc_y_type acc_y;

   typedef double _acc_z_type;
  _acc_z_type acc_z;

   typedef double _tau_n_type;
  _tau_n_type tau_n;

   typedef double _gamma_type;
  _gamma_type gamma;

   typedef double _delta_tau_n_type;
  _delta_tau_n_type delta_tau_n;





  typedef boost::shared_ptr< ::gnss_comm::GnssGloEphemMsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gnss_comm::GnssGloEphemMsg_<ContainerAllocator> const> ConstPtr;

}; // struct GnssGloEphemMsg_

typedef ::gnss_comm::GnssGloEphemMsg_<std::allocator<void> > GnssGloEphemMsg;

typedef boost::shared_ptr< ::gnss_comm::GnssGloEphemMsg > GnssGloEphemMsgPtr;
typedef boost::shared_ptr< ::gnss_comm::GnssGloEphemMsg const> GnssGloEphemMsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gnss_comm::GnssGloEphemMsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gnss_comm::GnssGloEphemMsg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::gnss_comm::GnssGloEphemMsg_<ContainerAllocator1> & lhs, const ::gnss_comm::GnssGloEphemMsg_<ContainerAllocator2> & rhs)
{
  return lhs.sat == rhs.sat &&
    lhs.ttr == rhs.ttr &&
    lhs.toe == rhs.toe &&
    lhs.freqo == rhs.freqo &&
    lhs.iode == rhs.iode &&
    lhs.health == rhs.health &&
    lhs.age == rhs.age &&
    lhs.ura == rhs.ura &&
    lhs.pos_x == rhs.pos_x &&
    lhs.pos_y == rhs.pos_y &&
    lhs.pos_z == rhs.pos_z &&
    lhs.vel_x == rhs.vel_x &&
    lhs.vel_y == rhs.vel_y &&
    lhs.vel_z == rhs.vel_z &&
    lhs.acc_x == rhs.acc_x &&
    lhs.acc_y == rhs.acc_y &&
    lhs.acc_z == rhs.acc_z &&
    lhs.tau_n == rhs.tau_n &&
    lhs.gamma == rhs.gamma &&
    lhs.delta_tau_n == rhs.delta_tau_n;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::gnss_comm::GnssGloEphemMsg_<ContainerAllocator1> & lhs, const ::gnss_comm::GnssGloEphemMsg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace gnss_comm

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::gnss_comm::GnssGloEphemMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gnss_comm::GnssGloEphemMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gnss_comm::GnssGloEphemMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gnss_comm::GnssGloEphemMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gnss_comm::GnssGloEphemMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gnss_comm::GnssGloEphemMsg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gnss_comm::GnssGloEphemMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6893dee0d8b1c9325a6693f3488e0144";
  }

  static const char* value(const ::gnss_comm::GnssGloEphemMsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6893dee0d8b1c932ULL;
  static const uint64_t static_value2 = 0x5a6693f3488e0144ULL;
};

template<class ContainerAllocator>
struct DataType< ::gnss_comm::GnssGloEphemMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gnss_comm/GnssGloEphemMsg";
  }

  static const char* value(const ::gnss_comm::GnssGloEphemMsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gnss_comm::GnssGloEphemMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This message contains GLONASS ephemeris data\n"
"\n"
"uint32 sat\n"
"GnssTimeMsg ttr\n"
"GnssTimeMsg toe\n"
"int32  freqo\n"
"uint32 iode\n"
"uint32 health\n"
"uint32 age\n"
"float64 ura\n"
"float64 pos_x\n"
"float64 pos_y\n"
"float64 pos_z\n"
"float64 vel_x\n"
"float64 vel_y\n"
"float64 vel_z\n"
"float64 acc_x\n"
"float64 acc_y\n"
"float64 acc_z\n"
"float64 tau_n\n"
"float64 gamma\n"
"float64 delta_tau_n\n"
"================================================================================\n"
"MSG: gnss_comm/GnssTimeMsg\n"
"# This message contains GNSS time expressed in the form of \n"
"# GNSS week number and time of week(in seconds)\n"
"\n"
"uint32 week\n"
"float64 tow\n"
;
  }

  static const char* value(const ::gnss_comm::GnssGloEphemMsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gnss_comm::GnssGloEphemMsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.sat);
      stream.next(m.ttr);
      stream.next(m.toe);
      stream.next(m.freqo);
      stream.next(m.iode);
      stream.next(m.health);
      stream.next(m.age);
      stream.next(m.ura);
      stream.next(m.pos_x);
      stream.next(m.pos_y);
      stream.next(m.pos_z);
      stream.next(m.vel_x);
      stream.next(m.vel_y);
      stream.next(m.vel_z);
      stream.next(m.acc_x);
      stream.next(m.acc_y);
      stream.next(m.acc_z);
      stream.next(m.tau_n);
      stream.next(m.gamma);
      stream.next(m.delta_tau_n);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GnssGloEphemMsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gnss_comm::GnssGloEphemMsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gnss_comm::GnssGloEphemMsg_<ContainerAllocator>& v)
  {
    s << indent << "sat: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.sat);
    s << indent << "ttr: ";
    s << std::endl;
    Printer< ::gnss_comm::GnssTimeMsg_<ContainerAllocator> >::stream(s, indent + "  ", v.ttr);
    s << indent << "toe: ";
    s << std::endl;
    Printer< ::gnss_comm::GnssTimeMsg_<ContainerAllocator> >::stream(s, indent + "  ", v.toe);
    s << indent << "freqo: ";
    Printer<int32_t>::stream(s, indent + "  ", v.freqo);
    s << indent << "iode: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.iode);
    s << indent << "health: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.health);
    s << indent << "age: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.age);
    s << indent << "ura: ";
    Printer<double>::stream(s, indent + "  ", v.ura);
    s << indent << "pos_x: ";
    Printer<double>::stream(s, indent + "  ", v.pos_x);
    s << indent << "pos_y: ";
    Printer<double>::stream(s, indent + "  ", v.pos_y);
    s << indent << "pos_z: ";
    Printer<double>::stream(s, indent + "  ", v.pos_z);
    s << indent << "vel_x: ";
    Printer<double>::stream(s, indent + "  ", v.vel_x);
    s << indent << "vel_y: ";
    Printer<double>::stream(s, indent + "  ", v.vel_y);
    s << indent << "vel_z: ";
    Printer<double>::stream(s, indent + "  ", v.vel_z);
    s << indent << "acc_x: ";
    Printer<double>::stream(s, indent + "  ", v.acc_x);
    s << indent << "acc_y: ";
    Printer<double>::stream(s, indent + "  ", v.acc_y);
    s << indent << "acc_z: ";
    Printer<double>::stream(s, indent + "  ", v.acc_z);
    s << indent << "tau_n: ";
    Printer<double>::stream(s, indent + "  ", v.tau_n);
    s << indent << "gamma: ";
    Printer<double>::stream(s, indent + "  ", v.gamma);
    s << indent << "delta_tau_n: ";
    Printer<double>::stream(s, indent + "  ", v.delta_tau_n);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GNSS_COMM_MESSAGE_GNSSGLOEPHEMMSG_H
