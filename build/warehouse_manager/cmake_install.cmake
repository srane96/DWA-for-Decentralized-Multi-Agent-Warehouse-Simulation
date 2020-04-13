# Install script for directory: /home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/siddhesh/warehouse_sim/warehouse_dwa_final/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/warehouse_manager/msg" TYPE FILE FILES
    "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/msg/TaskInfo.msg"
    "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/msg/RobotInfo.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/warehouse_manager/srv" TYPE FILE FILES
    "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/srv/Robot_Task_Complete.srv"
    "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/srv/Robot_Task_Request.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/warehouse_manager/cmake" TYPE FILE FILES "/home/siddhesh/warehouse_sim/warehouse_dwa_final/build/warehouse_manager/catkin_generated/installspace/warehouse_manager-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/siddhesh/warehouse_sim/warehouse_dwa_final/devel/include/warehouse_manager")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/siddhesh/warehouse_sim/warehouse_dwa_final/devel/share/roseus/ros/warehouse_manager")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/siddhesh/warehouse_sim/warehouse_dwa_final/devel/share/common-lisp/ros/warehouse_manager")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/siddhesh/warehouse_sim/warehouse_dwa_final/devel/share/gennodejs/ros/warehouse_manager")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/siddhesh/warehouse_sim/warehouse_dwa_final/devel/lib/python2.7/dist-packages/warehouse_manager")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/siddhesh/warehouse_sim/warehouse_dwa_final/devel/lib/python2.7/dist-packages/warehouse_manager")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/siddhesh/warehouse_sim/warehouse_dwa_final/build/warehouse_manager/catkin_generated/installspace/warehouse_manager.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/warehouse_manager/cmake" TYPE FILE FILES "/home/siddhesh/warehouse_sim/warehouse_dwa_final/build/warehouse_manager/catkin_generated/installspace/warehouse_manager-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/warehouse_manager/cmake" TYPE FILE FILES
    "/home/siddhesh/warehouse_sim/warehouse_dwa_final/build/warehouse_manager/catkin_generated/installspace/warehouse_managerConfig.cmake"
    "/home/siddhesh/warehouse_sim/warehouse_dwa_final/build/warehouse_manager/catkin_generated/installspace/warehouse_managerConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/warehouse_manager" TYPE FILE FILES "/home/siddhesh/warehouse_sim/warehouse_dwa_final/src/warehouse_manager/package.xml")
endif()

