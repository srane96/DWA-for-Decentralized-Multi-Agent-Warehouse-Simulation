# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "warehouse_manager: 2 messages, 2 services")

set(MSG_I_FLAGS "-Iwarehouse_manager:/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Inav_msgs:/opt/ros/kinetic/share/nav_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(warehouse_manager_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/msg/RobotInfo.msg" NAME_WE)
add_custom_target(_warehouse_manager_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "warehouse_manager" "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/msg/RobotInfo.msg" "geometry_msgs/Twist:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Vector3:geometry_msgs/Point:geometry_msgs/TwistWithCovariance:geometry_msgs/PoseWithCovariance:geometry_msgs/Pose:nav_msgs/Odometry"
)

get_filename_component(_filename "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/srv/Robot_Task_Request.srv" NAME_WE)
add_custom_target(_warehouse_manager_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "warehouse_manager" "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/srv/Robot_Task_Request.srv" ""
)

get_filename_component(_filename "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/msg/TaskInfo.msg" NAME_WE)
add_custom_target(_warehouse_manager_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "warehouse_manager" "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/msg/TaskInfo.msg" ""
)

get_filename_component(_filename "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/srv/Robot_Task_Complete.srv" NAME_WE)
add_custom_target(_warehouse_manager_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "warehouse_manager" "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/srv/Robot_Task_Complete.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(warehouse_manager
  "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/msg/RobotInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/warehouse_manager
)
_generate_msg_cpp(warehouse_manager
  "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/msg/TaskInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/warehouse_manager
)

### Generating Services
_generate_srv_cpp(warehouse_manager
  "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/srv/Robot_Task_Request.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/warehouse_manager
)
_generate_srv_cpp(warehouse_manager
  "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/srv/Robot_Task_Complete.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/warehouse_manager
)

### Generating Module File
_generate_module_cpp(warehouse_manager
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/warehouse_manager
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(warehouse_manager_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(warehouse_manager_generate_messages warehouse_manager_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/msg/RobotInfo.msg" NAME_WE)
add_dependencies(warehouse_manager_generate_messages_cpp _warehouse_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/srv/Robot_Task_Request.srv" NAME_WE)
add_dependencies(warehouse_manager_generate_messages_cpp _warehouse_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/msg/TaskInfo.msg" NAME_WE)
add_dependencies(warehouse_manager_generate_messages_cpp _warehouse_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/srv/Robot_Task_Complete.srv" NAME_WE)
add_dependencies(warehouse_manager_generate_messages_cpp _warehouse_manager_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(warehouse_manager_gencpp)
add_dependencies(warehouse_manager_gencpp warehouse_manager_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS warehouse_manager_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(warehouse_manager
  "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/msg/RobotInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/warehouse_manager
)
_generate_msg_eus(warehouse_manager
  "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/msg/TaskInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/warehouse_manager
)

### Generating Services
_generate_srv_eus(warehouse_manager
  "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/srv/Robot_Task_Request.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/warehouse_manager
)
_generate_srv_eus(warehouse_manager
  "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/srv/Robot_Task_Complete.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/warehouse_manager
)

### Generating Module File
_generate_module_eus(warehouse_manager
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/warehouse_manager
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(warehouse_manager_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(warehouse_manager_generate_messages warehouse_manager_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/msg/RobotInfo.msg" NAME_WE)
add_dependencies(warehouse_manager_generate_messages_eus _warehouse_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/srv/Robot_Task_Request.srv" NAME_WE)
add_dependencies(warehouse_manager_generate_messages_eus _warehouse_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/msg/TaskInfo.msg" NAME_WE)
add_dependencies(warehouse_manager_generate_messages_eus _warehouse_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/srv/Robot_Task_Complete.srv" NAME_WE)
add_dependencies(warehouse_manager_generate_messages_eus _warehouse_manager_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(warehouse_manager_geneus)
add_dependencies(warehouse_manager_geneus warehouse_manager_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS warehouse_manager_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(warehouse_manager
  "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/msg/RobotInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/warehouse_manager
)
_generate_msg_lisp(warehouse_manager
  "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/msg/TaskInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/warehouse_manager
)

### Generating Services
_generate_srv_lisp(warehouse_manager
  "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/srv/Robot_Task_Request.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/warehouse_manager
)
_generate_srv_lisp(warehouse_manager
  "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/srv/Robot_Task_Complete.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/warehouse_manager
)

### Generating Module File
_generate_module_lisp(warehouse_manager
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/warehouse_manager
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(warehouse_manager_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(warehouse_manager_generate_messages warehouse_manager_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/msg/RobotInfo.msg" NAME_WE)
add_dependencies(warehouse_manager_generate_messages_lisp _warehouse_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/srv/Robot_Task_Request.srv" NAME_WE)
add_dependencies(warehouse_manager_generate_messages_lisp _warehouse_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/msg/TaskInfo.msg" NAME_WE)
add_dependencies(warehouse_manager_generate_messages_lisp _warehouse_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/srv/Robot_Task_Complete.srv" NAME_WE)
add_dependencies(warehouse_manager_generate_messages_lisp _warehouse_manager_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(warehouse_manager_genlisp)
add_dependencies(warehouse_manager_genlisp warehouse_manager_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS warehouse_manager_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(warehouse_manager
  "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/msg/RobotInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/warehouse_manager
)
_generate_msg_nodejs(warehouse_manager
  "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/msg/TaskInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/warehouse_manager
)

### Generating Services
_generate_srv_nodejs(warehouse_manager
  "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/srv/Robot_Task_Request.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/warehouse_manager
)
_generate_srv_nodejs(warehouse_manager
  "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/srv/Robot_Task_Complete.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/warehouse_manager
)

### Generating Module File
_generate_module_nodejs(warehouse_manager
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/warehouse_manager
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(warehouse_manager_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(warehouse_manager_generate_messages warehouse_manager_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/msg/RobotInfo.msg" NAME_WE)
add_dependencies(warehouse_manager_generate_messages_nodejs _warehouse_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/srv/Robot_Task_Request.srv" NAME_WE)
add_dependencies(warehouse_manager_generate_messages_nodejs _warehouse_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/msg/TaskInfo.msg" NAME_WE)
add_dependencies(warehouse_manager_generate_messages_nodejs _warehouse_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/srv/Robot_Task_Complete.srv" NAME_WE)
add_dependencies(warehouse_manager_generate_messages_nodejs _warehouse_manager_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(warehouse_manager_gennodejs)
add_dependencies(warehouse_manager_gennodejs warehouse_manager_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS warehouse_manager_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(warehouse_manager
  "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/msg/RobotInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/warehouse_manager
)
_generate_msg_py(warehouse_manager
  "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/msg/TaskInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/warehouse_manager
)

### Generating Services
_generate_srv_py(warehouse_manager
  "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/srv/Robot_Task_Request.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/warehouse_manager
)
_generate_srv_py(warehouse_manager
  "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/srv/Robot_Task_Complete.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/warehouse_manager
)

### Generating Module File
_generate_module_py(warehouse_manager
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/warehouse_manager
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(warehouse_manager_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(warehouse_manager_generate_messages warehouse_manager_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/msg/RobotInfo.msg" NAME_WE)
add_dependencies(warehouse_manager_generate_messages_py _warehouse_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/srv/Robot_Task_Request.srv" NAME_WE)
add_dependencies(warehouse_manager_generate_messages_py _warehouse_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/msg/TaskInfo.msg" NAME_WE)
add_dependencies(warehouse_manager_generate_messages_py _warehouse_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/srv/Robot_Task_Complete.srv" NAME_WE)
add_dependencies(warehouse_manager_generate_messages_py _warehouse_manager_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(warehouse_manager_genpy)
add_dependencies(warehouse_manager_genpy warehouse_manager_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS warehouse_manager_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/warehouse_manager)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/warehouse_manager
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(warehouse_manager_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(warehouse_manager_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(warehouse_manager_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(warehouse_manager_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/warehouse_manager)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/warehouse_manager
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(warehouse_manager_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(warehouse_manager_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(warehouse_manager_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(warehouse_manager_generate_messages_eus nav_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/warehouse_manager)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/warehouse_manager
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(warehouse_manager_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(warehouse_manager_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(warehouse_manager_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(warehouse_manager_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/warehouse_manager)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/warehouse_manager
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(warehouse_manager_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(warehouse_manager_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(warehouse_manager_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(warehouse_manager_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/warehouse_manager)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/warehouse_manager\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/warehouse_manager
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(warehouse_manager_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(warehouse_manager_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(warehouse_manager_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(warehouse_manager_generate_messages_py nav_msgs_generate_messages_py)
endif()
