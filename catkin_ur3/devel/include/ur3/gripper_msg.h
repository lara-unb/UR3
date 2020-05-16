// Generated by gencpp from file ur3/gripper_msg.msg
// DO NOT EDIT!


#ifndef UR3_MESSAGE_GRIPPER_MSG_H
#define UR3_MESSAGE_GRIPPER_MSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <std_msgs/Bool.h>
#include <geometry_msgs/Pose.h>
#include <control_msgs/GripperCommand.h>
#include <geometry_msgs/Wrench.h>
#include <geometry_msgs/Vector3.h>

namespace ur3
{
template <class ContainerAllocator>
struct gripper_msg_
{
  typedef gripper_msg_<ContainerAllocator> Type;

  gripper_msg_()
    : header()
    , state()
    , pose()
    , gripper()
    , wrench()
    , velocity()  {
    }
  gripper_msg_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , state(_alloc)
    , pose(_alloc)
    , gripper(_alloc)
    , wrench(_alloc)
    , velocity(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::std_msgs::Bool_<ContainerAllocator>  _state_type;
  _state_type state;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _pose_type;
  _pose_type pose;

   typedef  ::control_msgs::GripperCommand_<ContainerAllocator>  _gripper_type;
  _gripper_type gripper;

   typedef  ::geometry_msgs::Wrench_<ContainerAllocator>  _wrench_type;
  _wrench_type wrench;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _velocity_type;
  _velocity_type velocity;





  typedef boost::shared_ptr< ::ur3::gripper_msg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ur3::gripper_msg_<ContainerAllocator> const> ConstPtr;

}; // struct gripper_msg_

typedef ::ur3::gripper_msg_<std::allocator<void> > gripper_msg;

typedef boost::shared_ptr< ::ur3::gripper_msg > gripper_msgPtr;
typedef boost::shared_ptr< ::ur3::gripper_msg const> gripper_msgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ur3::gripper_msg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ur3::gripper_msg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ur3::gripper_msg_<ContainerAllocator1> & lhs, const ::ur3::gripper_msg_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.state == rhs.state &&
    lhs.pose == rhs.pose &&
    lhs.gripper == rhs.gripper &&
    lhs.wrench == rhs.wrench &&
    lhs.velocity == rhs.velocity;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ur3::gripper_msg_<ContainerAllocator1> & lhs, const ::ur3::gripper_msg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ur3

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::ur3::gripper_msg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ur3::gripper_msg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ur3::gripper_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ur3::gripper_msg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ur3::gripper_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ur3::gripper_msg_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ur3::gripper_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ed2f79454cafcd1b110fff41cc4d9286";
  }

  static const char* value(const ::ur3::gripper_msg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xed2f79454cafcd1bULL;
  static const uint64_t static_value2 = 0x110fff41cc4d9286ULL;
};

template<class ContainerAllocator>
struct DataType< ::ur3::gripper_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ur3/gripper_msg";
  }

  static const char* value(const ::ur3::gripper_msg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ur3::gripper_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"std_msgs/Bool state \n"
"geometry_msgs/Pose pose \n"
"control_msgs/GripperCommand gripper\n"
"geometry_msgs/Wrench wrench\n"
"geometry_msgs/Vector3 velocity\n"
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
"\n"
"================================================================================\n"
"MSG: std_msgs/Bool\n"
"bool data\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: control_msgs/GripperCommand\n"
"float64 position\n"
"float64 max_effort\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Wrench\n"
"# This represents force in free space, separated into\n"
"# its linear and angular parts.\n"
"Vector3  force\n"
"Vector3  torque\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::ur3::gripper_msg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ur3::gripper_msg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.state);
      stream.next(m.pose);
      stream.next(m.gripper);
      stream.next(m.wrench);
      stream.next(m.velocity);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct gripper_msg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ur3::gripper_msg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ur3::gripper_msg_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "state: ";
    s << std::endl;
    Printer< ::std_msgs::Bool_<ContainerAllocator> >::stream(s, indent + "  ", v.state);
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
    s << indent << "gripper: ";
    s << std::endl;
    Printer< ::control_msgs::GripperCommand_<ContainerAllocator> >::stream(s, indent + "  ", v.gripper);
    s << indent << "wrench: ";
    s << std::endl;
    Printer< ::geometry_msgs::Wrench_<ContainerAllocator> >::stream(s, indent + "  ", v.wrench);
    s << indent << "velocity: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.velocity);
  }
};

} // namespace message_operations
} // namespace ros

#endif // UR3_MESSAGE_GRIPPER_MSG_H
