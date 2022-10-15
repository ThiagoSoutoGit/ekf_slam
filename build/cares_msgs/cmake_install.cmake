# Install script for directory: /home/thiago/catkin_ws/src/cares_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/thiago/catkin_ws/install")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cares_msgs/msg" TYPE FILE FILES
    "/home/thiago/catkin_ws/src/cares_msgs/msg/ArucoMarkers.msg"
    "/home/thiago/catkin_ws/src/cares_msgs/msg/InstanceMasks.msg"
    "/home/thiago/catkin_ws/src/cares_msgs/msg/StereoCameraInfo.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cares_msgs/srv" TYPE FILE FILES
    "/home/thiago/catkin_ws/src/cares_msgs/srv/ArucoDetect.srv"
    "/home/thiago/catkin_ws/src/cares_msgs/srv/CalibrationService.srv"
    "/home/thiago/catkin_ws/src/cares_msgs/srv/Detection.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cares_msgs/action" TYPE FILE FILES
    "/home/thiago/catkin_ws/src/cares_msgs/action/Mapping.action"
    "/home/thiago/catkin_ws/src/cares_msgs/action/MetricExtraction.action"
    "/home/thiago/catkin_ws/src/cares_msgs/action/Navigation.action"
    "/home/thiago/catkin_ws/src/cares_msgs/action/PlatformGoal.action"
    "/home/thiago/catkin_ws/src/cares_msgs/action/Scanning.action"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cares_msgs/msg" TYPE FILE FILES
    "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingAction.msg"
    "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionGoal.msg"
    "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionResult.msg"
    "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionFeedback.msg"
    "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingGoal.msg"
    "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingResult.msg"
    "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cares_msgs/msg" TYPE FILE FILES
    "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionAction.msg"
    "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionGoal.msg"
    "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionResult.msg"
    "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionFeedback.msg"
    "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionGoal.msg"
    "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionResult.msg"
    "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cares_msgs/msg" TYPE FILE FILES
    "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationAction.msg"
    "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionGoal.msg"
    "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionResult.msg"
    "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionFeedback.msg"
    "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationGoal.msg"
    "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationResult.msg"
    "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cares_msgs/msg" TYPE FILE FILES
    "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalAction.msg"
    "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionGoal.msg"
    "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionResult.msg"
    "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionFeedback.msg"
    "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalGoal.msg"
    "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalResult.msg"
    "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cares_msgs/msg" TYPE FILE FILES
    "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningAction.msg"
    "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionGoal.msg"
    "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionResult.msg"
    "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionFeedback.msg"
    "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningGoal.msg"
    "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningResult.msg"
    "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cares_msgs/cmake" TYPE FILE FILES "/home/thiago/catkin_ws/build/cares_msgs/catkin_generated/installspace/cares_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/thiago/catkin_ws/devel/include/cares_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/thiago/catkin_ws/devel/share/roseus/ros/cares_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/thiago/catkin_ws/devel/share/common-lisp/ros/cares_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/thiago/catkin_ws/devel/share/gennodejs/ros/cares_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/thiago/catkin_ws/devel/lib/python3/dist-packages/cares_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/thiago/catkin_ws/devel/lib/python3/dist-packages/cares_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/thiago/catkin_ws/build/cares_msgs/catkin_generated/installspace/cares_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cares_msgs/cmake" TYPE FILE FILES "/home/thiago/catkin_ws/build/cares_msgs/catkin_generated/installspace/cares_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cares_msgs/cmake" TYPE FILE FILES
    "/home/thiago/catkin_ws/build/cares_msgs/catkin_generated/installspace/cares_msgsConfig.cmake"
    "/home/thiago/catkin_ws/build/cares_msgs/catkin_generated/installspace/cares_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cares_msgs" TYPE FILE FILES "/home/thiago/catkin_ws/src/cares_msgs/package.xml")
endif()

