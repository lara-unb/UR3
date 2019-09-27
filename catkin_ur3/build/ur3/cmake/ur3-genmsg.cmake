# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ur3: 3 messages, 0 services")

set(MSG_I_FLAGS "-Iur3:/home/rafael/UR3/catkin_ur3/src/ur3/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Icontrol_msgs:/opt/ros/melodic/share/control_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg;-Itrajectory_msgs:/opt/ros/melodic/share/trajectory_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ur3_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/rafael/UR3/catkin_ur3/src/ur3/msg/end_Effector_msg.msg" NAME_WE)
add_custom_target(_ur3_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ur3" "/home/rafael/UR3/catkin_ur3/src/ur3/msg/end_Effector_msg.msg" "std_msgs/Bool:control_msgs/GripperCommand:geometry_msgs/Twist:geometry_msgs/Vector3:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Wrench:geometry_msgs/Point"
)

get_filename_component(_filename "/home/rafael/UR3/catkin_ur3/src/ur3/msg/ref_msg.msg" NAME_WE)
add_custom_target(_ur3_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ur3" "/home/rafael/UR3/catkin_ur3/src/ur3/msg/ref_msg.msg" "std_msgs/MultiArrayLayout:std_msgs/Float32MultiArray:std_msgs/MultiArrayDimension:std_msgs/Header"
)

get_filename_component(_filename "/home/rafael/UR3/catkin_ur3/src/ur3/msg/gripper_msg.msg" NAME_WE)
add_custom_target(_ur3_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ur3" "/home/rafael/UR3/catkin_ur3/src/ur3/msg/gripper_msg.msg" "std_msgs/Bool:control_msgs/GripperCommand:geometry_msgs/Vector3:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point:geometry_msgs/Wrench:geometry_msgs/Quaternion"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ur3
  "/home/rafael/UR3/catkin_ur3/src/ur3/msg/end_Effector_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/melodic/share/control_msgs/cmake/../msg/GripperCommand.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur3
)
_generate_msg_cpp(ur3
  "/home/rafael/UR3/catkin_ur3/src/ur3/msg/ref_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur3
)
_generate_msg_cpp(ur3
  "/home/rafael/UR3/catkin_ur3/src/ur3/msg/gripper_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/melodic/share/control_msgs/cmake/../msg/GripperCommand.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur3
)

### Generating Services

### Generating Module File
_generate_module_cpp(ur3
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur3
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ur3_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ur3_generate_messages ur3_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rafael/UR3/catkin_ur3/src/ur3/msg/end_Effector_msg.msg" NAME_WE)
add_dependencies(ur3_generate_messages_cpp _ur3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rafael/UR3/catkin_ur3/src/ur3/msg/ref_msg.msg" NAME_WE)
add_dependencies(ur3_generate_messages_cpp _ur3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rafael/UR3/catkin_ur3/src/ur3/msg/gripper_msg.msg" NAME_WE)
add_dependencies(ur3_generate_messages_cpp _ur3_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ur3_gencpp)
add_dependencies(ur3_gencpp ur3_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ur3_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ur3
  "/home/rafael/UR3/catkin_ur3/src/ur3/msg/end_Effector_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/melodic/share/control_msgs/cmake/../msg/GripperCommand.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ur3
)
_generate_msg_eus(ur3
  "/home/rafael/UR3/catkin_ur3/src/ur3/msg/ref_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ur3
)
_generate_msg_eus(ur3
  "/home/rafael/UR3/catkin_ur3/src/ur3/msg/gripper_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/melodic/share/control_msgs/cmake/../msg/GripperCommand.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ur3
)

### Generating Services

### Generating Module File
_generate_module_eus(ur3
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ur3
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ur3_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ur3_generate_messages ur3_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rafael/UR3/catkin_ur3/src/ur3/msg/end_Effector_msg.msg" NAME_WE)
add_dependencies(ur3_generate_messages_eus _ur3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rafael/UR3/catkin_ur3/src/ur3/msg/ref_msg.msg" NAME_WE)
add_dependencies(ur3_generate_messages_eus _ur3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rafael/UR3/catkin_ur3/src/ur3/msg/gripper_msg.msg" NAME_WE)
add_dependencies(ur3_generate_messages_eus _ur3_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ur3_geneus)
add_dependencies(ur3_geneus ur3_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ur3_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ur3
  "/home/rafael/UR3/catkin_ur3/src/ur3/msg/end_Effector_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/melodic/share/control_msgs/cmake/../msg/GripperCommand.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur3
)
_generate_msg_lisp(ur3
  "/home/rafael/UR3/catkin_ur3/src/ur3/msg/ref_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur3
)
_generate_msg_lisp(ur3
  "/home/rafael/UR3/catkin_ur3/src/ur3/msg/gripper_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/melodic/share/control_msgs/cmake/../msg/GripperCommand.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur3
)

### Generating Services

### Generating Module File
_generate_module_lisp(ur3
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur3
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ur3_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ur3_generate_messages ur3_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rafael/UR3/catkin_ur3/src/ur3/msg/end_Effector_msg.msg" NAME_WE)
add_dependencies(ur3_generate_messages_lisp _ur3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rafael/UR3/catkin_ur3/src/ur3/msg/ref_msg.msg" NAME_WE)
add_dependencies(ur3_generate_messages_lisp _ur3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rafael/UR3/catkin_ur3/src/ur3/msg/gripper_msg.msg" NAME_WE)
add_dependencies(ur3_generate_messages_lisp _ur3_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ur3_genlisp)
add_dependencies(ur3_genlisp ur3_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ur3_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ur3
  "/home/rafael/UR3/catkin_ur3/src/ur3/msg/end_Effector_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/melodic/share/control_msgs/cmake/../msg/GripperCommand.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ur3
)
_generate_msg_nodejs(ur3
  "/home/rafael/UR3/catkin_ur3/src/ur3/msg/ref_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ur3
)
_generate_msg_nodejs(ur3
  "/home/rafael/UR3/catkin_ur3/src/ur3/msg/gripper_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/melodic/share/control_msgs/cmake/../msg/GripperCommand.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ur3
)

### Generating Services

### Generating Module File
_generate_module_nodejs(ur3
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ur3
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ur3_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ur3_generate_messages ur3_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rafael/UR3/catkin_ur3/src/ur3/msg/end_Effector_msg.msg" NAME_WE)
add_dependencies(ur3_generate_messages_nodejs _ur3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rafael/UR3/catkin_ur3/src/ur3/msg/ref_msg.msg" NAME_WE)
add_dependencies(ur3_generate_messages_nodejs _ur3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rafael/UR3/catkin_ur3/src/ur3/msg/gripper_msg.msg" NAME_WE)
add_dependencies(ur3_generate_messages_nodejs _ur3_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ur3_gennodejs)
add_dependencies(ur3_gennodejs ur3_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ur3_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ur3
  "/home/rafael/UR3/catkin_ur3/src/ur3/msg/end_Effector_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/melodic/share/control_msgs/cmake/../msg/GripperCommand.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur3
)
_generate_msg_py(ur3
  "/home/rafael/UR3/catkin_ur3/src/ur3/msg/ref_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur3
)
_generate_msg_py(ur3
  "/home/rafael/UR3/catkin_ur3/src/ur3/msg/gripper_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/melodic/share/control_msgs/cmake/../msg/GripperCommand.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur3
)

### Generating Services

### Generating Module File
_generate_module_py(ur3
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur3
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ur3_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ur3_generate_messages ur3_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rafael/UR3/catkin_ur3/src/ur3/msg/end_Effector_msg.msg" NAME_WE)
add_dependencies(ur3_generate_messages_py _ur3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rafael/UR3/catkin_ur3/src/ur3/msg/ref_msg.msg" NAME_WE)
add_dependencies(ur3_generate_messages_py _ur3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rafael/UR3/catkin_ur3/src/ur3/msg/gripper_msg.msg" NAME_WE)
add_dependencies(ur3_generate_messages_py _ur3_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ur3_genpy)
add_dependencies(ur3_genpy ur3_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ur3_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur3)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur3
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ur3_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET control_msgs_generate_messages_cpp)
  add_dependencies(ur3_generate_messages_cpp control_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(ur3_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ur3)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ur3
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ur3_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET control_msgs_generate_messages_eus)
  add_dependencies(ur3_generate_messages_eus control_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(ur3_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur3)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur3
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ur3_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET control_msgs_generate_messages_lisp)
  add_dependencies(ur3_generate_messages_lisp control_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(ur3_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ur3)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ur3
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ur3_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET control_msgs_generate_messages_nodejs)
  add_dependencies(ur3_generate_messages_nodejs control_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(ur3_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur3)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur3\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur3
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ur3_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET control_msgs_generate_messages_py)
  add_dependencies(ur3_generate_messages_py control_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(ur3_generate_messages_py geometry_msgs_generate_messages_py)
endif()
