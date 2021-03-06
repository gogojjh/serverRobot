/* Auto-generated by genmsg_cpp for file /home/chiao/documents/serverRobot/ORB_SERVER/msg/dstate.msg */
#ifndef ORB_SERVER_MESSAGE_DSTATE_H
#define ORB_SERVER_MESSAGE_DSTATE_H
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


namespace ORB_SERVER
{
template <class ContainerAllocator>
struct dstate_ {
  typedef dstate_<ContainerAllocator> Type;

  dstate_()
  : sendTimestamp(0.0)
  {
  }

  dstate_(const ContainerAllocator& _alloc)
  : sendTimestamp(0.0)
  {
  }

  typedef double _sendTimestamp_type;
  double sendTimestamp;


  typedef boost::shared_ptr< ::ORB_SERVER::dstate_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ORB_SERVER::dstate_<ContainerAllocator>  const> ConstPtr;
}; // struct dstate
typedef  ::ORB_SERVER::dstate_<std::allocator<void> > dstate;

typedef boost::shared_ptr< ::ORB_SERVER::dstate> dstatePtr;
typedef boost::shared_ptr< ::ORB_SERVER::dstate const> dstateConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::ORB_SERVER::dstate_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::ORB_SERVER::dstate_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace ORB_SERVER

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::ORB_SERVER::dstate_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::ORB_SERVER::dstate_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::ORB_SERVER::dstate_<ContainerAllocator> > {
  static const char* value() 
  {
    return "7a1d7afa5798bdca65d4031fd76fac21";
  }

  static const char* value(const  ::ORB_SERVER::dstate_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x7a1d7afa5798bdcaULL;
  static const uint64_t static_value2 = 0x65d4031fd76fac21ULL;
};

template<class ContainerAllocator>
struct DataType< ::ORB_SERVER::dstate_<ContainerAllocator> > {
  static const char* value() 
  {
    return "ORB_SERVER/dstate";
  }

  static const char* value(const  ::ORB_SERVER::dstate_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::ORB_SERVER::dstate_<ContainerAllocator> > {
  static const char* value() 
  {
    return "float64 sendTimestamp\n\
\n\
";
  }

  static const char* value(const  ::ORB_SERVER::dstate_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::ORB_SERVER::dstate_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::ORB_SERVER::dstate_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.sendTimestamp);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct dstate_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ORB_SERVER::dstate_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::ORB_SERVER::dstate_<ContainerAllocator> & v) 
  {
    s << indent << "sendTimestamp: ";
    Printer<double>::stream(s, indent + "  ", v.sendTimestamp);
  }
};


} // namespace message_operations
} // namespace ros

#endif // ORB_SERVER_MESSAGE_DSTATE_H

