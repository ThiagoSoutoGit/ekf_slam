# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ekf_slam: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iekf_slam:/home/thiago/catkin_ws/src/ekf_slam/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ekf_slam_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/thiago/catkin_ws/src/ekf_slam/msg/LandmarksMap.msg" NAME_WE)
add_custom_target(_ekf_slam_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ekf_slam" "/home/thiago/catkin_ws/src/ekf_slam/msg/LandmarksMap.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ekf_slam
  "/home/thiago/catkin_ws/src/ekf_slam/msg/LandmarksMap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ekf_slam
)

### Generating Services

### Generating Module File
_generate_module_cpp(ekf_slam
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ekf_slam
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ekf_slam_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ekf_slam_generate_messages ekf_slam_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/thiago/catkin_ws/src/ekf_slam/msg/LandmarksMap.msg" NAME_WE)
add_dependencies(ekf_slam_generate_messages_cpp _ekf_slam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ekf_slam_gencpp)
add_dependencies(ekf_slam_gencpp ekf_slam_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ekf_slam_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ekf_slam
  "/home/thiago/catkin_ws/src/ekf_slam/msg/LandmarksMap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ekf_slam
)

### Generating Services

### Generating Module File
_generate_module_eus(ekf_slam
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ekf_slam
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ekf_slam_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ekf_slam_generate_messages ekf_slam_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/thiago/catkin_ws/src/ekf_slam/msg/LandmarksMap.msg" NAME_WE)
add_dependencies(ekf_slam_generate_messages_eus _ekf_slam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ekf_slam_geneus)
add_dependencies(ekf_slam_geneus ekf_slam_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ekf_slam_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ekf_slam
  "/home/thiago/catkin_ws/src/ekf_slam/msg/LandmarksMap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ekf_slam
)

### Generating Services

### Generating Module File
_generate_module_lisp(ekf_slam
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ekf_slam
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ekf_slam_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ekf_slam_generate_messages ekf_slam_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/thiago/catkin_ws/src/ekf_slam/msg/LandmarksMap.msg" NAME_WE)
add_dependencies(ekf_slam_generate_messages_lisp _ekf_slam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ekf_slam_genlisp)
add_dependencies(ekf_slam_genlisp ekf_slam_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ekf_slam_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ekf_slam
  "/home/thiago/catkin_ws/src/ekf_slam/msg/LandmarksMap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ekf_slam
)

### Generating Services

### Generating Module File
_generate_module_nodejs(ekf_slam
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ekf_slam
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ekf_slam_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ekf_slam_generate_messages ekf_slam_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/thiago/catkin_ws/src/ekf_slam/msg/LandmarksMap.msg" NAME_WE)
add_dependencies(ekf_slam_generate_messages_nodejs _ekf_slam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ekf_slam_gennodejs)
add_dependencies(ekf_slam_gennodejs ekf_slam_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ekf_slam_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ekf_slam
  "/home/thiago/catkin_ws/src/ekf_slam/msg/LandmarksMap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ekf_slam
)

### Generating Services

### Generating Module File
_generate_module_py(ekf_slam
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ekf_slam
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ekf_slam_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ekf_slam_generate_messages ekf_slam_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/thiago/catkin_ws/src/ekf_slam/msg/LandmarksMap.msg" NAME_WE)
add_dependencies(ekf_slam_generate_messages_py _ekf_slam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ekf_slam_genpy)
add_dependencies(ekf_slam_genpy ekf_slam_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ekf_slam_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ekf_slam)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ekf_slam
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ekf_slam_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ekf_slam)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ekf_slam
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ekf_slam_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ekf_slam)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ekf_slam
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ekf_slam_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ekf_slam)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ekf_slam
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ekf_slam_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ekf_slam)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ekf_slam\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ekf_slam
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ekf_slam_generate_messages_py std_msgs_generate_messages_py)
endif()
