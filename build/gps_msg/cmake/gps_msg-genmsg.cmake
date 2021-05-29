# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "gps_msg: 3 messages, 0 services")

set(MSG_I_FLAGS "-Igps_msg:/home/dyc/Documents/catkin_ws/src/gps_msg/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(gps_msg_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/dyc/Documents/catkin_ws/src/gps_msg/msg/Gps_RMC.msg" NAME_WE)
add_custom_target(_gps_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gps_msg" "/home/dyc/Documents/catkin_ws/src/gps_msg/msg/Gps_RMC.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/dyc/Documents/catkin_ws/src/gps_msg/msg/Gps_GGA.msg" NAME_WE)
add_custom_target(_gps_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gps_msg" "/home/dyc/Documents/catkin_ws/src/gps_msg/msg/Gps_GGA.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/dyc/Documents/catkin_ws/src/gps_msg/msg/Gps_INSPVA.msg" NAME_WE)
add_custom_target(_gps_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gps_msg" "/home/dyc/Documents/catkin_ws/src/gps_msg/msg/Gps_INSPVA.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(gps_msg
  "/home/dyc/Documents/catkin_ws/src/gps_msg/msg/Gps_RMC.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gps_msg
)
_generate_msg_cpp(gps_msg
  "/home/dyc/Documents/catkin_ws/src/gps_msg/msg/Gps_GGA.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gps_msg
)
_generate_msg_cpp(gps_msg
  "/home/dyc/Documents/catkin_ws/src/gps_msg/msg/Gps_INSPVA.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gps_msg
)

### Generating Services

### Generating Module File
_generate_module_cpp(gps_msg
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gps_msg
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(gps_msg_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(gps_msg_generate_messages gps_msg_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dyc/Documents/catkin_ws/src/gps_msg/msg/Gps_RMC.msg" NAME_WE)
add_dependencies(gps_msg_generate_messages_cpp _gps_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dyc/Documents/catkin_ws/src/gps_msg/msg/Gps_GGA.msg" NAME_WE)
add_dependencies(gps_msg_generate_messages_cpp _gps_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dyc/Documents/catkin_ws/src/gps_msg/msg/Gps_INSPVA.msg" NAME_WE)
add_dependencies(gps_msg_generate_messages_cpp _gps_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gps_msg_gencpp)
add_dependencies(gps_msg_gencpp gps_msg_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gps_msg_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(gps_msg
  "/home/dyc/Documents/catkin_ws/src/gps_msg/msg/Gps_RMC.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gps_msg
)
_generate_msg_eus(gps_msg
  "/home/dyc/Documents/catkin_ws/src/gps_msg/msg/Gps_GGA.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gps_msg
)
_generate_msg_eus(gps_msg
  "/home/dyc/Documents/catkin_ws/src/gps_msg/msg/Gps_INSPVA.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gps_msg
)

### Generating Services

### Generating Module File
_generate_module_eus(gps_msg
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gps_msg
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(gps_msg_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(gps_msg_generate_messages gps_msg_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dyc/Documents/catkin_ws/src/gps_msg/msg/Gps_RMC.msg" NAME_WE)
add_dependencies(gps_msg_generate_messages_eus _gps_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dyc/Documents/catkin_ws/src/gps_msg/msg/Gps_GGA.msg" NAME_WE)
add_dependencies(gps_msg_generate_messages_eus _gps_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dyc/Documents/catkin_ws/src/gps_msg/msg/Gps_INSPVA.msg" NAME_WE)
add_dependencies(gps_msg_generate_messages_eus _gps_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gps_msg_geneus)
add_dependencies(gps_msg_geneus gps_msg_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gps_msg_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(gps_msg
  "/home/dyc/Documents/catkin_ws/src/gps_msg/msg/Gps_RMC.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gps_msg
)
_generate_msg_lisp(gps_msg
  "/home/dyc/Documents/catkin_ws/src/gps_msg/msg/Gps_GGA.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gps_msg
)
_generate_msg_lisp(gps_msg
  "/home/dyc/Documents/catkin_ws/src/gps_msg/msg/Gps_INSPVA.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gps_msg
)

### Generating Services

### Generating Module File
_generate_module_lisp(gps_msg
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gps_msg
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(gps_msg_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(gps_msg_generate_messages gps_msg_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dyc/Documents/catkin_ws/src/gps_msg/msg/Gps_RMC.msg" NAME_WE)
add_dependencies(gps_msg_generate_messages_lisp _gps_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dyc/Documents/catkin_ws/src/gps_msg/msg/Gps_GGA.msg" NAME_WE)
add_dependencies(gps_msg_generate_messages_lisp _gps_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dyc/Documents/catkin_ws/src/gps_msg/msg/Gps_INSPVA.msg" NAME_WE)
add_dependencies(gps_msg_generate_messages_lisp _gps_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gps_msg_genlisp)
add_dependencies(gps_msg_genlisp gps_msg_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gps_msg_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(gps_msg
  "/home/dyc/Documents/catkin_ws/src/gps_msg/msg/Gps_RMC.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gps_msg
)
_generate_msg_nodejs(gps_msg
  "/home/dyc/Documents/catkin_ws/src/gps_msg/msg/Gps_GGA.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gps_msg
)
_generate_msg_nodejs(gps_msg
  "/home/dyc/Documents/catkin_ws/src/gps_msg/msg/Gps_INSPVA.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gps_msg
)

### Generating Services

### Generating Module File
_generate_module_nodejs(gps_msg
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gps_msg
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(gps_msg_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(gps_msg_generate_messages gps_msg_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dyc/Documents/catkin_ws/src/gps_msg/msg/Gps_RMC.msg" NAME_WE)
add_dependencies(gps_msg_generate_messages_nodejs _gps_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dyc/Documents/catkin_ws/src/gps_msg/msg/Gps_GGA.msg" NAME_WE)
add_dependencies(gps_msg_generate_messages_nodejs _gps_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dyc/Documents/catkin_ws/src/gps_msg/msg/Gps_INSPVA.msg" NAME_WE)
add_dependencies(gps_msg_generate_messages_nodejs _gps_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gps_msg_gennodejs)
add_dependencies(gps_msg_gennodejs gps_msg_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gps_msg_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(gps_msg
  "/home/dyc/Documents/catkin_ws/src/gps_msg/msg/Gps_RMC.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gps_msg
)
_generate_msg_py(gps_msg
  "/home/dyc/Documents/catkin_ws/src/gps_msg/msg/Gps_GGA.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gps_msg
)
_generate_msg_py(gps_msg
  "/home/dyc/Documents/catkin_ws/src/gps_msg/msg/Gps_INSPVA.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gps_msg
)

### Generating Services

### Generating Module File
_generate_module_py(gps_msg
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gps_msg
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(gps_msg_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(gps_msg_generate_messages gps_msg_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dyc/Documents/catkin_ws/src/gps_msg/msg/Gps_RMC.msg" NAME_WE)
add_dependencies(gps_msg_generate_messages_py _gps_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dyc/Documents/catkin_ws/src/gps_msg/msg/Gps_GGA.msg" NAME_WE)
add_dependencies(gps_msg_generate_messages_py _gps_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dyc/Documents/catkin_ws/src/gps_msg/msg/Gps_INSPVA.msg" NAME_WE)
add_dependencies(gps_msg_generate_messages_py _gps_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gps_msg_genpy)
add_dependencies(gps_msg_genpy gps_msg_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gps_msg_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gps_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gps_msg
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(gps_msg_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gps_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gps_msg
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(gps_msg_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gps_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gps_msg
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(gps_msg_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gps_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gps_msg
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(gps_msg_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gps_msg)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gps_msg\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gps_msg
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(gps_msg_generate_messages_py std_msgs_generate_messages_py)
endif()
