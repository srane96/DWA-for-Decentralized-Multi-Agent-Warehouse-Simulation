// Generated by gencpp from file dwa/goal_requestResponse.msg
// DO NOT EDIT!


#ifndef DWA_MESSAGE_GOAL_REQUESTRESPONSE_H
#define DWA_MESSAGE_GOAL_REQUESTRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace dwa
{
template <class ContainerAllocator>
struct goal_requestResponse_
{
  typedef goal_requestResponse_<ContainerAllocator> Type;

  goal_requestResponse_()
    : goal_x(0)
    , goal_y(0)  {
    }
  goal_requestResponse_(const ContainerAllocator& _alloc)
    : goal_x(0)
    , goal_y(0)  {
  (void)_alloc;
    }



   typedef int64_t _goal_x_type;
  _goal_x_type goal_x;

   typedef int64_t _goal_y_type;
  _goal_y_type goal_y;





  typedef boost::shared_ptr< ::dwa::goal_requestResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dwa::goal_requestResponse_<ContainerAllocator> const> ConstPtr;

}; // struct goal_requestResponse_

typedef ::dwa::goal_requestResponse_<std::allocator<void> > goal_requestResponse;

typedef boost::shared_ptr< ::dwa::goal_requestResponse > goal_requestResponsePtr;
typedef boost::shared_ptr< ::dwa::goal_requestResponse const> goal_requestResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dwa::goal_requestResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dwa::goal_requestResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace dwa

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::dwa::goal_requestResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dwa::goal_requestResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dwa::goal_requestResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dwa::goal_requestResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dwa::goal_requestResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dwa::goal_requestResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dwa::goal_requestResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f850839b0e98979c967a25c801509e73";
  }

  static const char* value(const ::dwa::goal_requestResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf850839b0e98979cULL;
  static const uint64_t static_value2 = 0x967a25c801509e73ULL;
};

template<class ContainerAllocator>
struct DataType< ::dwa::goal_requestResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dwa/goal_requestResponse";
  }

  static const char* value(const ::dwa::goal_requestResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dwa::goal_requestResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 goal_x\n\
int64 goal_y\n\
";
  }

  static const char* value(const ::dwa::goal_requestResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dwa::goal_requestResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.goal_x);
      stream.next(m.goal_y);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct goal_requestResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dwa::goal_requestResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dwa::goal_requestResponse_<ContainerAllocator>& v)
  {
    s << indent << "goal_x: ";
    Printer<int64_t>::stream(s, indent + "  ", v.goal_x);
    s << indent << "goal_y: ";
    Printer<int64_t>::stream(s, indent + "  ", v.goal_y);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DWA_MESSAGE_GOAL_REQUESTRESPONSE_H
