# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "cares_msgs: 38 messages, 3 services")

set(MSG_I_FLAGS "-Icares_msgs:/home/thiago/catkin_ws/src/cares_msgs/msg;-Icares_msgs:/home/thiago/catkin_ws/devel/share/cares_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(cares_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/thiago/catkin_ws/src/cares_msgs/msg/ArucoMarkers.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/thiago/catkin_ws/src/cares_msgs/msg/ArucoMarkers.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/thiago/catkin_ws/src/cares_msgs/msg/InstanceMasks.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/thiago/catkin_ws/src/cares_msgs/msg/InstanceMasks.msg" "sensor_msgs/RegionOfInterest:std_msgs/Header:sensor_msgs/Image"
)

get_filename_component(_filename "/home/thiago/catkin_ws/src/cares_msgs/msg/StereoCameraInfo.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/thiago/catkin_ws/src/cares_msgs/msg/StereoCameraInfo.msg" "sensor_msgs/RegionOfInterest:std_msgs/Header:sensor_msgs/CameraInfo"
)

get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingAction.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingAction.msg" "std_msgs/String:geometry_msgs/Pose:cares_msgs/MappingActionFeedback:cares_msgs/MetricExtractionGoal:cares_msgs/ScanningFeedback:geometry_msgs/Point:geometry_msgs/Quaternion:cares_msgs/MappingFeedback:geometry_msgs/PoseStamped:std_msgs/Bool:cares_msgs/MappingActionGoal:actionlib_msgs/GoalStatus:cares_msgs/ScanningGoal:std_msgs/Header:cares_msgs/MappingResult:cares_msgs/MappingGoal:actionlib_msgs/GoalID:cares_msgs/MetricExtractionFeedback:cares_msgs/MappingActionResult"
)

get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionGoal.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionGoal.msg" "std_msgs/String:geometry_msgs/Quaternion:cares_msgs/MappingGoal:geometry_msgs/Pose:geometry_msgs/PoseStamped:cares_msgs/ScanningGoal:actionlib_msgs/GoalID:std_msgs/Header:cares_msgs/MetricExtractionGoal:std_msgs/Bool:geometry_msgs/Point"
)

get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionResult.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionResult.msg" "cares_msgs/MappingResult:actionlib_msgs/GoalStatus:std_msgs/Header:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionFeedback.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionFeedback.msg" "cares_msgs/MappingFeedback:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:cares_msgs/MetricExtractionFeedback:std_msgs/Header:cares_msgs/ScanningFeedback"
)

get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingGoal.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingGoal.msg" "std_msgs/String:geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/PoseStamped:cares_msgs/ScanningGoal:std_msgs/Header:cares_msgs/MetricExtractionGoal:std_msgs/Bool:geometry_msgs/Point"
)

get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingResult.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingResult.msg" ""
)

get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingFeedback.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingFeedback.msg" "cares_msgs/MetricExtractionFeedback:cares_msgs/ScanningFeedback"
)

get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionAction.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionAction.msg" "std_msgs/String:actionlib_msgs/GoalStatus:cares_msgs/MetricExtractionResult:actionlib_msgs/GoalID:cares_msgs/MetricExtractionFeedback:std_msgs/Header:cares_msgs/MetricExtractionActionGoal:cares_msgs/MetricExtractionGoal:cares_msgs/MetricExtractionActionFeedback:cares_msgs/MetricExtractionActionResult"
)

get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionGoal.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionGoal.msg" "std_msgs/String:std_msgs/Header:cares_msgs/MetricExtractionGoal:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionResult.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionResult.msg" "cares_msgs/MetricExtractionResult:actionlib_msgs/GoalStatus:std_msgs/Header:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionFeedback.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionFeedback.msg" "cares_msgs/MetricExtractionFeedback:actionlib_msgs/GoalStatus:std_msgs/Header:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionGoal.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionGoal.msg" "std_msgs/String"
)

get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionResult.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionResult.msg" ""
)

get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionFeedback.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionFeedback.msg" ""
)

get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationAction.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationAction.msg" "cares_msgs/NavigationActionGoal:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:cares_msgs/NavigationResult:cares_msgs/NavigationFeedback:cares_msgs/NavigationActionResult:std_msgs/Header:cares_msgs/NavigationGoal:cares_msgs/NavigationActionFeedback"
)

get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionGoal.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionGoal.msg" "cares_msgs/NavigationGoal:std_msgs/Header:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionResult.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionResult.msg" "actionlib_msgs/GoalStatus:std_msgs/Header:cares_msgs/NavigationResult:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionFeedback.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionFeedback.msg" "cares_msgs/NavigationFeedback:actionlib_msgs/GoalStatus:std_msgs/Header:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationGoal.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationGoal.msg" ""
)

get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationResult.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationResult.msg" ""
)

get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationFeedback.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationFeedback.msg" ""
)

get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalAction.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalAction.msg" "std_msgs/String:geometry_msgs/Quaternion:cares_msgs/PlatformGoalFeedback:geometry_msgs/Pose:cares_msgs/PlatformGoalActionGoal:actionlib_msgs/GoalStatus:geometry_msgs/PoseStamped:actionlib_msgs/GoalID:cares_msgs/PlatformGoalActionFeedback:cares_msgs/PlatformGoalGoal:std_msgs/Header:cares_msgs/PlatformGoalActionResult:cares_msgs/PlatformGoalResult:geometry_msgs/Point"
)

get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionGoal.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionGoal.msg" "std_msgs/String:geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/PoseStamped:actionlib_msgs/GoalID:cares_msgs/PlatformGoalGoal:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionResult.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionResult.msg" "cares_msgs/PlatformGoalResult:actionlib_msgs/GoalStatus:std_msgs/Header:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionFeedback.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionFeedback.msg" "cares_msgs/PlatformGoalFeedback:actionlib_msgs/GoalStatus:std_msgs/Header:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalGoal.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalGoal.msg" "std_msgs/String:geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/PoseStamped:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalResult.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalResult.msg" ""
)

get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalFeedback.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalFeedback.msg" ""
)

get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningAction.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningAction.msg" "std_msgs/String:cares_msgs/ScanningActionResult:geometry_msgs/Quaternion:geometry_msgs/Pose:cares_msgs/ScanningActionFeedback:actionlib_msgs/GoalStatus:geometry_msgs/PoseStamped:cares_msgs/ScanningGoal:actionlib_msgs/GoalID:cares_msgs/ScanningActionGoal:cares_msgs/ScanningResult:std_msgs/Header:cares_msgs/ScanningFeedback:std_msgs/Bool:geometry_msgs/Point"
)

get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionGoal.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionGoal.msg" "std_msgs/String:geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/PoseStamped:cares_msgs/ScanningGoal:actionlib_msgs/GoalID:std_msgs/Header:std_msgs/Bool:geometry_msgs/Point"
)

get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionResult.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionResult.msg" "cares_msgs/ScanningResult:actionlib_msgs/GoalStatus:std_msgs/Header:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionFeedback.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionFeedback.msg" "actionlib_msgs/GoalStatus:std_msgs/Header:cares_msgs/ScanningFeedback:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningGoal.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningGoal.msg" "std_msgs/String:geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/PoseStamped:std_msgs/Header:std_msgs/Bool:geometry_msgs/Point"
)

get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningResult.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningResult.msg" ""
)

get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningFeedback.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningFeedback.msg" ""
)

get_filename_component(_filename "/home/thiago/catkin_ws/src/cares_msgs/srv/ArucoDetect.srv" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/thiago/catkin_ws/src/cares_msgs/srv/ArucoDetect.srv" "geometry_msgs/TransformStamped:geometry_msgs/Transform:cares_msgs/StereoCameraInfo:geometry_msgs/Quaternion:sensor_msgs/Image:std_msgs/Header:sensor_msgs/RegionOfInterest:sensor_msgs/CameraInfo:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/thiago/catkin_ws/src/cares_msgs/srv/CalibrationService.srv" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/thiago/catkin_ws/src/cares_msgs/srv/CalibrationService.srv" "sensor_msgs/CameraInfo:sensor_msgs/RegionOfInterest:std_msgs/Header:cares_msgs/StereoCameraInfo"
)

get_filename_component(_filename "/home/thiago/catkin_ws/src/cares_msgs/srv/Detection.srv" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/thiago/catkin_ws/src/cares_msgs/srv/Detection.srv" "sensor_msgs/Image:cares_msgs/InstanceMasks:std_msgs/Header:sensor_msgs/RegionOfInterest"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(cares_msgs
  "/home/thiago/catkin_ws/src/cares_msgs/msg/ArucoMarkers.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_msg_cpp(cares_msgs
  "/home/thiago/catkin_ws/src/cares_msgs/msg/InstanceMasks.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_msg_cpp(cares_msgs
  "/home/thiago/catkin_ws/src/cares_msgs/msg/StereoCameraInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_msg_cpp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionFeedback.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionGoal.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingResult.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionFeedback.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_msg_cpp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_msg_cpp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_msg_cpp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_msg_cpp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_msg_cpp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_msg_cpp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionFeedback.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_msg_cpp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionGoal.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionGoal.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionFeedback.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_msg_cpp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_msg_cpp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_msg_cpp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_msg_cpp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_msg_cpp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_msg_cpp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_msg_cpp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationAction.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationResult.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationFeedback.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationGoal.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_msg_cpp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_msg_cpp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_msg_cpp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_msg_cpp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_msg_cpp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_msg_cpp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_msg_cpp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionFeedback.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionResult.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_msg_cpp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_msg_cpp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_msg_cpp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_msg_cpp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_msg_cpp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_msg_cpp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_msg_cpp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionGoal.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_msg_cpp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_msg_cpp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_msg_cpp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_msg_cpp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_msg_cpp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_msg_cpp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)

### Generating Services
_generate_srv_cpp(cares_msgs
  "/home/thiago/catkin_ws/src/cares_msgs/srv/ArucoDetect.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/thiago/catkin_ws/src/cares_msgs/msg/StereoCameraInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_srv_cpp(cares_msgs
  "/home/thiago/catkin_ws/src/cares_msgs/srv/CalibrationService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/src/cares_msgs/msg/StereoCameraInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_srv_cpp(cares_msgs
  "/home/thiago/catkin_ws/src/cares_msgs/srv/Detection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/thiago/catkin_ws/src/cares_msgs/msg/InstanceMasks.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)

### Generating Module File
_generate_module_cpp(cares_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(cares_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(cares_msgs_generate_messages cares_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/thiago/catkin_ws/src/cares_msgs/msg/ArucoMarkers.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/src/cares_msgs/msg/InstanceMasks.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/src/cares_msgs/msg/StereoCameraInfo.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingAction.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionAction.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationAction.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalAction.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningAction.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/src/cares_msgs/srv/ArucoDetect.srv" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/src/cares_msgs/srv/CalibrationService.srv" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/src/cares_msgs/srv/Detection.srv" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cares_msgs_gencpp)
add_dependencies(cares_msgs_gencpp cares_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cares_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(cares_msgs
  "/home/thiago/catkin_ws/src/cares_msgs/msg/ArucoMarkers.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_msg_eus(cares_msgs
  "/home/thiago/catkin_ws/src/cares_msgs/msg/InstanceMasks.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_msg_eus(cares_msgs
  "/home/thiago/catkin_ws/src/cares_msgs/msg/StereoCameraInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_msg_eus(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionFeedback.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionGoal.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingResult.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionFeedback.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_msg_eus(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_msg_eus(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_msg_eus(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_msg_eus(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_msg_eus(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_msg_eus(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionFeedback.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_msg_eus(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionGoal.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionGoal.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionFeedback.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_msg_eus(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_msg_eus(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_msg_eus(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_msg_eus(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_msg_eus(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_msg_eus(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_msg_eus(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationAction.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationResult.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationFeedback.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationGoal.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_msg_eus(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_msg_eus(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_msg_eus(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_msg_eus(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_msg_eus(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_msg_eus(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_msg_eus(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionFeedback.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionResult.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_msg_eus(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_msg_eus(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_msg_eus(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_msg_eus(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_msg_eus(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_msg_eus(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_msg_eus(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionGoal.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_msg_eus(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_msg_eus(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_msg_eus(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_msg_eus(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_msg_eus(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_msg_eus(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)

### Generating Services
_generate_srv_eus(cares_msgs
  "/home/thiago/catkin_ws/src/cares_msgs/srv/ArucoDetect.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/thiago/catkin_ws/src/cares_msgs/msg/StereoCameraInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_srv_eus(cares_msgs
  "/home/thiago/catkin_ws/src/cares_msgs/srv/CalibrationService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/src/cares_msgs/msg/StereoCameraInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_srv_eus(cares_msgs
  "/home/thiago/catkin_ws/src/cares_msgs/srv/Detection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/thiago/catkin_ws/src/cares_msgs/msg/InstanceMasks.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)

### Generating Module File
_generate_module_eus(cares_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(cares_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(cares_msgs_generate_messages cares_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/thiago/catkin_ws/src/cares_msgs/msg/ArucoMarkers.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/src/cares_msgs/msg/InstanceMasks.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/src/cares_msgs/msg/StereoCameraInfo.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingAction.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionAction.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationAction.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalAction.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningAction.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/src/cares_msgs/srv/ArucoDetect.srv" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/src/cares_msgs/srv/CalibrationService.srv" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/src/cares_msgs/srv/Detection.srv" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cares_msgs_geneus)
add_dependencies(cares_msgs_geneus cares_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cares_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(cares_msgs
  "/home/thiago/catkin_ws/src/cares_msgs/msg/ArucoMarkers.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_msg_lisp(cares_msgs
  "/home/thiago/catkin_ws/src/cares_msgs/msg/InstanceMasks.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_msg_lisp(cares_msgs
  "/home/thiago/catkin_ws/src/cares_msgs/msg/StereoCameraInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_msg_lisp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionFeedback.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionGoal.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingResult.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionFeedback.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_msg_lisp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_msg_lisp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_msg_lisp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_msg_lisp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_msg_lisp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_msg_lisp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionFeedback.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_msg_lisp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionGoal.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionGoal.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionFeedback.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_msg_lisp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_msg_lisp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_msg_lisp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_msg_lisp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_msg_lisp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_msg_lisp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_msg_lisp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationAction.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationResult.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationFeedback.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationGoal.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_msg_lisp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_msg_lisp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_msg_lisp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_msg_lisp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_msg_lisp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_msg_lisp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_msg_lisp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionFeedback.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionResult.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_msg_lisp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_msg_lisp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_msg_lisp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_msg_lisp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_msg_lisp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_msg_lisp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_msg_lisp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionGoal.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_msg_lisp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_msg_lisp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_msg_lisp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_msg_lisp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_msg_lisp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_msg_lisp(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)

### Generating Services
_generate_srv_lisp(cares_msgs
  "/home/thiago/catkin_ws/src/cares_msgs/srv/ArucoDetect.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/thiago/catkin_ws/src/cares_msgs/msg/StereoCameraInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_srv_lisp(cares_msgs
  "/home/thiago/catkin_ws/src/cares_msgs/srv/CalibrationService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/src/cares_msgs/msg/StereoCameraInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_srv_lisp(cares_msgs
  "/home/thiago/catkin_ws/src/cares_msgs/srv/Detection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/thiago/catkin_ws/src/cares_msgs/msg/InstanceMasks.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)

### Generating Module File
_generate_module_lisp(cares_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(cares_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(cares_msgs_generate_messages cares_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/thiago/catkin_ws/src/cares_msgs/msg/ArucoMarkers.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/src/cares_msgs/msg/InstanceMasks.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/src/cares_msgs/msg/StereoCameraInfo.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingAction.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionAction.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationAction.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalAction.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningAction.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/src/cares_msgs/srv/ArucoDetect.srv" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/src/cares_msgs/srv/CalibrationService.srv" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/src/cares_msgs/srv/Detection.srv" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cares_msgs_genlisp)
add_dependencies(cares_msgs_genlisp cares_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cares_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(cares_msgs
  "/home/thiago/catkin_ws/src/cares_msgs/msg/ArucoMarkers.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_msg_nodejs(cares_msgs
  "/home/thiago/catkin_ws/src/cares_msgs/msg/InstanceMasks.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_msg_nodejs(cares_msgs
  "/home/thiago/catkin_ws/src/cares_msgs/msg/StereoCameraInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_msg_nodejs(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionFeedback.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionGoal.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingResult.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionFeedback.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_msg_nodejs(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_msg_nodejs(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_msg_nodejs(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_msg_nodejs(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_msg_nodejs(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_msg_nodejs(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionFeedback.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_msg_nodejs(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionGoal.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionGoal.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionFeedback.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_msg_nodejs(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_msg_nodejs(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_msg_nodejs(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_msg_nodejs(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_msg_nodejs(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_msg_nodejs(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_msg_nodejs(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationAction.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationResult.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationFeedback.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationGoal.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_msg_nodejs(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_msg_nodejs(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_msg_nodejs(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_msg_nodejs(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_msg_nodejs(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_msg_nodejs(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_msg_nodejs(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionFeedback.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionResult.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_msg_nodejs(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_msg_nodejs(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_msg_nodejs(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_msg_nodejs(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_msg_nodejs(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_msg_nodejs(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_msg_nodejs(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionGoal.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_msg_nodejs(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_msg_nodejs(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_msg_nodejs(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_msg_nodejs(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_msg_nodejs(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_msg_nodejs(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)

### Generating Services
_generate_srv_nodejs(cares_msgs
  "/home/thiago/catkin_ws/src/cares_msgs/srv/ArucoDetect.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/thiago/catkin_ws/src/cares_msgs/msg/StereoCameraInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_srv_nodejs(cares_msgs
  "/home/thiago/catkin_ws/src/cares_msgs/srv/CalibrationService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/src/cares_msgs/msg/StereoCameraInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_srv_nodejs(cares_msgs
  "/home/thiago/catkin_ws/src/cares_msgs/srv/Detection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/thiago/catkin_ws/src/cares_msgs/msg/InstanceMasks.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)

### Generating Module File
_generate_module_nodejs(cares_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(cares_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(cares_msgs_generate_messages cares_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/thiago/catkin_ws/src/cares_msgs/msg/ArucoMarkers.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/src/cares_msgs/msg/InstanceMasks.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/src/cares_msgs/msg/StereoCameraInfo.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingAction.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionAction.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationAction.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalAction.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningAction.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/src/cares_msgs/srv/ArucoDetect.srv" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/src/cares_msgs/srv/CalibrationService.srv" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/src/cares_msgs/srv/Detection.srv" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cares_msgs_gennodejs)
add_dependencies(cares_msgs_gennodejs cares_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cares_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(cares_msgs
  "/home/thiago/catkin_ws/src/cares_msgs/msg/ArucoMarkers.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_msg_py(cares_msgs
  "/home/thiago/catkin_ws/src/cares_msgs/msg/InstanceMasks.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_msg_py(cares_msgs
  "/home/thiago/catkin_ws/src/cares_msgs/msg/StereoCameraInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_msg_py(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionFeedback.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionGoal.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingResult.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionFeedback.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_msg_py(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_msg_py(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_msg_py(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_msg_py(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_msg_py(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_msg_py(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionFeedback.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_msg_py(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionGoal.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionGoal.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionFeedback.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_msg_py(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_msg_py(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_msg_py(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_msg_py(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_msg_py(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_msg_py(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_msg_py(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationAction.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationResult.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationFeedback.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationGoal.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_msg_py(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_msg_py(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_msg_py(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_msg_py(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_msg_py(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_msg_py(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_msg_py(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionFeedback.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionResult.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_msg_py(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_msg_py(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_msg_py(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_msg_py(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_msg_py(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_msg_py(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_msg_py(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionGoal.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_msg_py(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_msg_py(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_msg_py(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_msg_py(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_msg_py(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_msg_py(cares_msgs
  "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)

### Generating Services
_generate_srv_py(cares_msgs
  "/home/thiago/catkin_ws/src/cares_msgs/srv/ArucoDetect.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/thiago/catkin_ws/src/cares_msgs/msg/StereoCameraInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_srv_py(cares_msgs
  "/home/thiago/catkin_ws/src/cares_msgs/srv/CalibrationService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/thiago/catkin_ws/src/cares_msgs/msg/StereoCameraInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_srv_py(cares_msgs
  "/home/thiago/catkin_ws/src/cares_msgs/srv/Detection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/thiago/catkin_ws/src/cares_msgs/msg/InstanceMasks.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)

### Generating Module File
_generate_module_py(cares_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(cares_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(cares_msgs_generate_messages cares_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/thiago/catkin_ws/src/cares_msgs/msg/ArucoMarkers.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/src/cares_msgs/msg/InstanceMasks.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/src/cares_msgs/msg/StereoCameraInfo.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingAction.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingActionFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MappingFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionAction.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionActionFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/MetricExtractionFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationAction.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationActionFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/NavigationFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalAction.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalActionFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/PlatformGoalFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningAction.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningActionFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/devel/share/cares_msgs/msg/ScanningFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/src/cares_msgs/srv/ArucoDetect.srv" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/src/cares_msgs/srv/CalibrationService.srv" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thiago/catkin_ws/src/cares_msgs/srv/Detection.srv" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cares_msgs_genpy)
add_dependencies(cares_msgs_genpy cares_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cares_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(cares_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(cares_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(cares_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(cares_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(cares_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(cares_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(cares_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(cares_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(cares_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(cares_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(cares_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(cares_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(cares_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(cares_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(cares_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(cares_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(cares_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(cares_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(cares_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(cares_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
