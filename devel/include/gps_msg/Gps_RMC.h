// Generated by gencpp from file gps_msg/Gps_RMC.msg
// DO NOT EDIT!


#ifndef GPS_MSG_MESSAGE_GPS_RMC_H
#define GPS_MSG_MESSAGE_GPS_RMC_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace gps_msg
{
template <class ContainerAllocator>
struct Gps_RMC_
{
  typedef Gps_RMC_<ContainerAllocator> Type;

  Gps_RMC_()
    : header()
    , utc(0.0)
    , pos_status()
    , lat(0.0)
    , lat_dir()
    , lon(0.0)
    , lon_dir()
    , speed_Kn(0.0)
    , track_true(0.0)
    , date(0)
    , mag_var(0.0)
    , var_dir()
    , mode_ind()  {
    }
  Gps_RMC_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , utc(0.0)
    , pos_status(_alloc)
    , lat(0.0)
    , lat_dir(_alloc)
    , lon(0.0)
    , lon_dir(_alloc)
    , speed_Kn(0.0)
    , track_true(0.0)
    , date(0)
    , mag_var(0.0)
    , var_dir(_alloc)
    , mode_ind(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef double _utc_type;
  _utc_type utc;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _pos_status_type;
  _pos_status_type pos_status;

   typedef double _lat_type;
  _lat_type lat;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _lat_dir_type;
  _lat_dir_type lat_dir;

   typedef double _lon_type;
  _lon_type lon;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _lon_dir_type;
  _lon_dir_type lon_dir;

   typedef double _speed_Kn_type;
  _speed_Kn_type speed_Kn;

   typedef float _track_true_type;
  _track_true_type track_true;

   typedef int64_t _date_type;
  _date_type date;

   typedef float _mag_var_type;
  _mag_var_type mag_var;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _var_dir_type;
  _var_dir_type var_dir;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _mode_ind_type;
  _mode_ind_type mode_ind;





  typedef boost::shared_ptr< ::gps_msg::Gps_RMC_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gps_msg::Gps_RMC_<ContainerAllocator> const> ConstPtr;

}; // struct Gps_RMC_

typedef ::gps_msg::Gps_RMC_<std::allocator<void> > Gps_RMC;

typedef boost::shared_ptr< ::gps_msg::Gps_RMC > Gps_RMCPtr;
typedef boost::shared_ptr< ::gps_msg::Gps_RMC const> Gps_RMCConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gps_msg::Gps_RMC_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gps_msg::Gps_RMC_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace gps_msg

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'gps_msg': ['/home/dyc/Documents/catkin_ws/src/gps_msg/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::gps_msg::Gps_RMC_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gps_msg::Gps_RMC_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gps_msg::Gps_RMC_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gps_msg::Gps_RMC_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gps_msg::Gps_RMC_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gps_msg::Gps_RMC_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gps_msg::Gps_RMC_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4ed0fb8addd3545d2ae5e27efc17db4b";
  }

  static const char* value(const ::gps_msg::Gps_RMC_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4ed0fb8addd3545dULL;
  static const uint64_t static_value2 = 0x2ae5e27efc17db4bULL;
};

template<class ContainerAllocator>
struct DataType< ::gps_msg::Gps_RMC_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gps_msg/Gps_RMC";
  }

  static const char* value(const ::gps_msg::Gps_RMC_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gps_msg::Gps_RMC_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n\
\n\
# GNRMC 数据包msg\n\
float64 utc         # hhmmss.ss\n\
string pos_status   # 位置状态 A=有效，V=无效\n\
float64 lat         # 纬度\n\
string  lat_dir     # 纬度方向\n\
float64 lon         # 经度\n\
string  lon_dir     # 经度方向\n\
float64 speed_Kn    # 地速 knot\n\
float32 track_true  # 真北航迹方向,deg\n\
int64  date         # 日期 ddmmyy \n\
float32 mag_var     # 磁偏角 deg\n\
string var_dir      # 磁偏角方向 E/W\n\
string mode_ind     # 定位模式指示器\n\
\n\
# GNGSA 数据包msg   定位使用的卫星和DOP值（相对误差）\n\
# float32 pdop        # 位置精度因子\n\
# float32 hdop        # 平面精度因子\n\
# float32 vdop        # 高程精度因子\n\
\n\
\n\
\n\
\n\
\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
";
  }

  static const char* value(const ::gps_msg::Gps_RMC_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gps_msg::Gps_RMC_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.utc);
      stream.next(m.pos_status);
      stream.next(m.lat);
      stream.next(m.lat_dir);
      stream.next(m.lon);
      stream.next(m.lon_dir);
      stream.next(m.speed_Kn);
      stream.next(m.track_true);
      stream.next(m.date);
      stream.next(m.mag_var);
      stream.next(m.var_dir);
      stream.next(m.mode_ind);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Gps_RMC_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gps_msg::Gps_RMC_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gps_msg::Gps_RMC_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "utc: ";
    Printer<double>::stream(s, indent + "  ", v.utc);
    s << indent << "pos_status: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.pos_status);
    s << indent << "lat: ";
    Printer<double>::stream(s, indent + "  ", v.lat);
    s << indent << "lat_dir: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.lat_dir);
    s << indent << "lon: ";
    Printer<double>::stream(s, indent + "  ", v.lon);
    s << indent << "lon_dir: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.lon_dir);
    s << indent << "speed_Kn: ";
    Printer<double>::stream(s, indent + "  ", v.speed_Kn);
    s << indent << "track_true: ";
    Printer<float>::stream(s, indent + "  ", v.track_true);
    s << indent << "date: ";
    Printer<int64_t>::stream(s, indent + "  ", v.date);
    s << indent << "mag_var: ";
    Printer<float>::stream(s, indent + "  ", v.mag_var);
    s << indent << "var_dir: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.var_dir);
    s << indent << "mode_ind: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.mode_ind);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GPS_MSG_MESSAGE_GPS_RMC_H
