// Generated by gencpp from file warehouse_manager/Robot_Task_CompleteResponse.msg
// DO NOT EDIT!


#ifndef WAREHOUSE_MANAGER_MESSAGE_ROBOT_TASK_COMPLETERESPONSE_H
#define WAREHOUSE_MANAGER_MESSAGE_ROBOT_TASK_COMPLETERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace warehouse_manager
{
template <class ContainerAllocator>
struct Robot_Task_CompleteResponse_
{
  typedef Robot_Task_CompleteResponse_<ContainerAllocator> Type;

  Robot_Task_CompleteResponse_()
    {
    }
  Robot_Task_CompleteResponse_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::warehouse_manager::Robot_Task_CompleteResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::warehouse_manager::Robot_Task_CompleteResponse_<ContainerAllocator> const> ConstPtr;

}; // struct Robot_Task_CompleteResponse_

typedef ::warehouse_manager::Robot_Task_CompleteResponse_<std::allocator<void> > Robot_Task_CompleteResponse;

typedef boost::shared_ptr< ::warehouse_manager::Robot_Task_CompleteResponse > Robot_Task_CompleteResponsePtr;
typedef boost::shared_ptr< ::warehouse_manager::Robot_Task_CompleteResponse const> Robot_Task_CompleteResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::warehouse_manager::Robot_Task_CompleteResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::warehouse_manager::Robot_Task_CompleteResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace warehouse_manager

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/kinetic/share/nav_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'warehouse_manager': ['/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::warehouse_manager::Robot_Task_CompleteResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::warehouse_manager::Robot_Task_CompleteResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::warehouse_manager::Robot_Task_CompleteResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::warehouse_manager::Robot_Task_CompleteResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::warehouse_manager::Robot_Task_CompleteResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::warehouse_manager::Robot_Task_CompleteResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::warehouse_manager::Robot_Task_CompleteResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::warehouse_manager::Robot_Task_CompleteResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::warehouse_manager::Robot_Task_CompleteResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "warehouse_manager/Robot_Task_CompleteResponse";
  }

  static const char* value(const ::warehouse_manager::Robot_Task_CompleteResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::warehouse_manager::Robot_Task_CompleteResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
";
  }

  static const char* value(const ::warehouse_manager::Robot_Task_CompleteResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::warehouse_manager::Robot_Task_CompleteResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Robot_Task_CompleteResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::warehouse_manager::Robot_Task_CompleteResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::warehouse_manager::Robot_Task_CompleteResponse_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // WAREHOUSE_MANAGER_MESSAGE_ROBOT_TASK_COMPLETERESPONSE_H
