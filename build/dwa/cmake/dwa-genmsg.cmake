# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "dwa: 0 messages, 2 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(dwa_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/dwa/srv/GoalRequest.srv" NAME_WE)
add_custom_target(_dwa_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dwa" "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/dwa/srv/GoalRequest.srv" ""
)

get_filename_component(_filename "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/dwa/srv/GoalCompletion.srv" NAME_WE)
add_custom_target(_dwa_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dwa" "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/dwa/srv/GoalCompletion.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(dwa
  "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/dwa/srv/GoalRequest.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dwa
)
_generate_srv_cpp(dwa
  "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/dwa/srv/GoalCompletion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dwa
)

### Generating Module File
_generate_module_cpp(dwa
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dwa
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(dwa_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(dwa_generate_messages dwa_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/dwa/srv/GoalRequest.srv" NAME_WE)
add_dependencies(dwa_generate_messages_cpp _dwa_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/dwa/srv/GoalCompletion.srv" NAME_WE)
add_dependencies(dwa_generate_messages_cpp _dwa_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dwa_gencpp)
add_dependencies(dwa_gencpp dwa_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dwa_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(dwa
  "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/dwa/srv/GoalRequest.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dwa
)
_generate_srv_eus(dwa
  "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/dwa/srv/GoalCompletion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dwa
)

### Generating Module File
_generate_module_eus(dwa
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dwa
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(dwa_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(dwa_generate_messages dwa_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/dwa/srv/GoalRequest.srv" NAME_WE)
add_dependencies(dwa_generate_messages_eus _dwa_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/dwa/srv/GoalCompletion.srv" NAME_WE)
add_dependencies(dwa_generate_messages_eus _dwa_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dwa_geneus)
add_dependencies(dwa_geneus dwa_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dwa_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(dwa
  "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/dwa/srv/GoalRequest.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dwa
)
_generate_srv_lisp(dwa
  "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/dwa/srv/GoalCompletion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dwa
)

### Generating Module File
_generate_module_lisp(dwa
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dwa
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(dwa_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(dwa_generate_messages dwa_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/dwa/srv/GoalRequest.srv" NAME_WE)
add_dependencies(dwa_generate_messages_lisp _dwa_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/dwa/srv/GoalCompletion.srv" NAME_WE)
add_dependencies(dwa_generate_messages_lisp _dwa_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dwa_genlisp)
add_dependencies(dwa_genlisp dwa_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dwa_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(dwa
  "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/dwa/srv/GoalRequest.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dwa
)
_generate_srv_nodejs(dwa
  "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/dwa/srv/GoalCompletion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dwa
)

### Generating Module File
_generate_module_nodejs(dwa
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dwa
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(dwa_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(dwa_generate_messages dwa_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/dwa/srv/GoalRequest.srv" NAME_WE)
add_dependencies(dwa_generate_messages_nodejs _dwa_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/dwa/srv/GoalCompletion.srv" NAME_WE)
add_dependencies(dwa_generate_messages_nodejs _dwa_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dwa_gennodejs)
add_dependencies(dwa_gennodejs dwa_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dwa_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(dwa
  "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/dwa/srv/GoalRequest.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dwa
)
_generate_srv_py(dwa
  "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/dwa/srv/GoalCompletion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dwa
)

### Generating Module File
_generate_module_py(dwa
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dwa
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(dwa_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(dwa_generate_messages dwa_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/dwa/srv/GoalRequest.srv" NAME_WE)
add_dependencies(dwa_generate_messages_py _dwa_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/dwa/srv/GoalCompletion.srv" NAME_WE)
add_dependencies(dwa_generate_messages_py _dwa_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dwa_genpy)
add_dependencies(dwa_genpy dwa_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dwa_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dwa)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dwa
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(dwa_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dwa)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dwa
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(dwa_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dwa)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dwa
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(dwa_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dwa)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dwa
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(dwa_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dwa)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dwa\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dwa
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(dwa_generate_messages_py std_msgs_generate_messages_py)
endif()
