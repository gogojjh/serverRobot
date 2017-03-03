/* Auto-generated by genmsg_cpp for file /home/chiao/documents/clientRobot/ORB_CLIENT/msg/parameter.msg */
#ifndef ORB_CLIENT_MESSAGE_PARAMETER_H
#define ORB_CLIENT_MESSAGE_PARAMETER_H
#include <string>
#include <vector>
#include <map>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/time.h"

#include "ros/macros.h"

#include "ros/assert.h"

#include "ORB_CLIENT/gyroscope.h"
#include "ORB_CLIENT/accleration.h"

namespace ORB_CLIENT
{
template <class ContainerAllocator>
struct parameter_ {
  typedef parameter_<ContainerAllocator> Type;

  parameter_()
  : nKeypoints(0)
  , nNextId(0)
  , mnId(0)
  , timestamp()
  , gyr()
  , acc()
  {
  }

  parameter_(const ContainerAllocator& _alloc)
  : nKeypoints(0)
  , nNextId(0)
  , mnId(0)
  , timestamp(_alloc)
  , gyr(_alloc)
  , acc(_alloc)
  {
  }

  typedef int32_t _nKeypoints_type;
  int32_t nKeypoints;

  typedef uint64_t _nNextId_type;
  uint64_t nNextId;

  typedef uint64_t _mnId_type;
  uint64_t mnId;

  typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _timestamp_type;
  std::vector<double, typename ContainerAllocator::template rebind<double>::other >  timestamp;

  typedef std::vector< ::ORB_CLIENT::gyroscope_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::ORB_CLIENT::gyroscope_<ContainerAllocator> >::other >  _gyr_type;
  std::vector< ::ORB_CLIENT::gyroscope_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::ORB_CLIENT::gyroscope_<ContainerAllocator> >::other >  gyr;

  typedef std::vector< ::ORB_CLIENT::accleration_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::ORB_CLIENT::accleration_<ContainerAllocator> >::other >  _acc_type;
  std::vector< ::ORB_CLIENT::accleration_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::ORB_CLIENT::accleration_<ContainerAllocator> >::other >  acc;


  typedef boost::shared_ptr< ::ORB_CLIENT::parameter_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ORB_CLIENT::parameter_<ContainerAllocator>  const> ConstPtr;
}; // struct parameter
typedef  ::ORB_CLIENT::parameter_<std::allocator<void> > parameter;

typedef boost::shared_ptr< ::ORB_CLIENT::parameter> parameterPtr;
typedef boost::shared_ptr< ::ORB_CLIENT::parameter const> parameterConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::ORB_CLIENT::parameter_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::ORB_CLIENT::parameter_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace ORB_CLIENT

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::ORB_CLIENT::parameter_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::ORB_CLIENT::parameter_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::ORB_CLIENT::parameter_<ContainerAllocator> > {
  static const char* value() 
  {
    return "10b2e1d77b9779defba748003083cf57";
  }

  static const char* value(const  ::ORB_CLIENT::parameter_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x10b2e1d77b9779deULL;
  static const uint64_t static_value2 = 0xfba748003083cf57ULL;
};

template<class ContainerAllocator>
struct DataType< ::ORB_CLIENT::parameter_<ContainerAllocator> > {
  static const char* value() 
  {
    return "ORB_CLIENT/parameter";
  }

  static const char* value(const  ::ORB_CLIENT::parameter_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::ORB_CLIENT::parameter_<ContainerAllocator> > {
  static const char* value() 
  {
    return "int32 nKeypoints\n\
uint64 nNextId\n\
uint64 mnId\n\
float64[] timestamp\n\
gyroscope[] gyr\n\
accleration[] acc \n\
\n\
================================================================================\n\
MSG: ORB_CLIENT/gyroscope\n\
float64 gyrx\n\
float64 gyry\n\
float64 gyrz\n\
\n\
================================================================================\n\
MSG: ORB_CLIENT/accleration\n\
float64 accx\n\
float64 accy\n\
float64 accz\n\
\n\
";
  }

  static const char* value(const  ::ORB_CLIENT::parameter_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::ORB_CLIENT::parameter_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.nKeypoints);
    stream.next(m.nNextId);
    stream.next(m.mnId);
    stream.next(m.timestamp);
    stream.next(m.gyr);
    stream.next(m.acc);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct parameter_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ORB_CLIENT::parameter_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::ORB_CLIENT::parameter_<ContainerAllocator> & v) 
  {
    s << indent << "nKeypoints: ";
    Printer<int32_t>::stream(s, indent + "  ", v.nKeypoints);
    s << indent << "nNextId: ";
    Printer<uint64_t>::stream(s, indent + "  ", v.nNextId);
    s << indent << "mnId: ";
    Printer<uint64_t>::stream(s, indent + "  ", v.mnId);
    s << indent << "timestamp[]" << std::endl;
    for (size_t i = 0; i < v.timestamp.size(); ++i)
    {
      s << indent << "  timestamp[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.timestamp[i]);
    }
    s << indent << "gyr[]" << std::endl;
    for (size_t i = 0; i < v.gyr.size(); ++i)
    {
      s << indent << "  gyr[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::ORB_CLIENT::gyroscope_<ContainerAllocator> >::stream(s, indent + "    ", v.gyr[i]);
    }
    s << indent << "acc[]" << std::endl;
    for (size_t i = 0; i < v.acc.size(); ++i)
    {
      s << indent << "  acc[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::ORB_CLIENT::accleration_<ContainerAllocator> >::stream(s, indent + "    ", v.acc[i]);
    }
  }
};


} // namespace message_operations
} // namespace ros

#endif // ORB_CLIENT_MESSAGE_PARAMETER_H

