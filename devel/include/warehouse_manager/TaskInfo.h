// Generated by gencpp from file warehouse_manager/TaskInfo.msg
// DO NOT EDIT!


#ifndef WAREHOUSE_MANAGER_MESSAGE_TASKINFO_H
#define WAREHOUSE_MANAGER_MESSAGE_TASKINFO_H


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
struct TaskInfo_
{
  typedef TaskInfo_<ContainerAllocator> Type;

  TaskInfo_()
    : robot_list()
    , task_list()  {
    }
  TaskInfo_(const ContainerAllocator& _alloc)
    : robot_list(_alloc)
    , task_list(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _robot_list_type;
  _robot_list_type robot_list;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _task_list_type;
  _task_list_type task_list;





  typedef boost::shared_ptr< ::warehouse_manager::TaskInfo_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::warehouse_manager::TaskInfo_<ContainerAllocator> const> ConstPtr;

}; // struct TaskInfo_

typedef ::warehouse_manager::TaskInfo_<std::allocator<void> > TaskInfo;

typedef boost::shared_ptr< ::warehouse_manager::TaskInfo > TaskInfoPtr;
typedef boost::shared_ptr< ::warehouse_manager::TaskInfo const> TaskInfoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::warehouse_manager::TaskInfo_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::warehouse_manager::TaskInfo_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace warehouse_manager

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/kinetic/share/nav_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'warehouse_manager': ['/home/siddhesh/warehouse_sim/warehouse_dwa/src/warehouse_manager/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::warehouse_manager::TaskInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::warehouse_manager::TaskInfo_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::warehouse_manager::TaskInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::warehouse_manager::TaskInfo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::warehouse_manager::TaskInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::warehouse_manager::TaskInfo_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::warehouse_manager::TaskInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "17840239039ae6341a939e8b4e5eeb0c";
  }

  static const char* value(const ::warehouse_manager::TaskInfo_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x17840239039ae634ULL;
  static const uint64_t static_value2 = 0x1a939e8b4e5eeb0cULL;
};

template<class ContainerAllocator>
struct DataType< ::warehouse_manager::TaskInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "warehouse_manager/TaskInfo";
  }

  static const char* value(const ::warehouse_manager::TaskInfo_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::warehouse_manager::TaskInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string[] robot_list\n\
string[] task_list\n\
";
  }

  static const char* value(const ::warehouse_manager::TaskInfo_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::warehouse_manager::TaskInfo_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.robot_list);
      stream.next(m.task_list);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TaskInfo_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::warehouse_manager::TaskInfo_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::warehouse_manager::TaskInfo_<ContainerAllocator>& v)
  {
    s << indent << "robot_list[]" << std::endl;
    for (size_t i = 0; i < v.robot_list.size(); ++i)
    {
      s << indent << "  robot_list[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.robot_list[i]);
    }
    s << indent << "task_list[]" << std::endl;
    for (size_t i = 0; i < v.task_list.size(); ++i)
    {
      s << indent << "  task_list[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.task_list[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // WAREHOUSE_MANAGER_MESSAGE_TASKINFO_H