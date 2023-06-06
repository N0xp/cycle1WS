# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "tatrialpkg: 1 messages, 1 services")

set(MSG_I_FLAGS "-Itatrialpkg:/home/pc/catkin_ws/src/tatrialpkg/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(tatrialpkg_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/pc/catkin_ws/src/tatrialpkg/msg/Num.msg" NAME_WE)
add_custom_target(_tatrialpkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tatrialpkg" "/home/pc/catkin_ws/src/tatrialpkg/msg/Num.msg" ""
)

get_filename_component(_filename "/home/pc/catkin_ws/src/tatrialpkg/srv/AddTwoInit.srv" NAME_WE)
add_custom_target(_tatrialpkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tatrialpkg" "/home/pc/catkin_ws/src/tatrialpkg/srv/AddTwoInit.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(tatrialpkg
  "/home/pc/catkin_ws/src/tatrialpkg/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tatrialpkg
)

### Generating Services
_generate_srv_cpp(tatrialpkg
  "/home/pc/catkin_ws/src/tatrialpkg/srv/AddTwoInit.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tatrialpkg
)

### Generating Module File
_generate_module_cpp(tatrialpkg
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tatrialpkg
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(tatrialpkg_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(tatrialpkg_generate_messages tatrialpkg_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pc/catkin_ws/src/tatrialpkg/msg/Num.msg" NAME_WE)
add_dependencies(tatrialpkg_generate_messages_cpp _tatrialpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc/catkin_ws/src/tatrialpkg/srv/AddTwoInit.srv" NAME_WE)
add_dependencies(tatrialpkg_generate_messages_cpp _tatrialpkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tatrialpkg_gencpp)
add_dependencies(tatrialpkg_gencpp tatrialpkg_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tatrialpkg_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(tatrialpkg
  "/home/pc/catkin_ws/src/tatrialpkg/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tatrialpkg
)

### Generating Services
_generate_srv_eus(tatrialpkg
  "/home/pc/catkin_ws/src/tatrialpkg/srv/AddTwoInit.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tatrialpkg
)

### Generating Module File
_generate_module_eus(tatrialpkg
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tatrialpkg
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(tatrialpkg_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(tatrialpkg_generate_messages tatrialpkg_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pc/catkin_ws/src/tatrialpkg/msg/Num.msg" NAME_WE)
add_dependencies(tatrialpkg_generate_messages_eus _tatrialpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc/catkin_ws/src/tatrialpkg/srv/AddTwoInit.srv" NAME_WE)
add_dependencies(tatrialpkg_generate_messages_eus _tatrialpkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tatrialpkg_geneus)
add_dependencies(tatrialpkg_geneus tatrialpkg_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tatrialpkg_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(tatrialpkg
  "/home/pc/catkin_ws/src/tatrialpkg/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tatrialpkg
)

### Generating Services
_generate_srv_lisp(tatrialpkg
  "/home/pc/catkin_ws/src/tatrialpkg/srv/AddTwoInit.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tatrialpkg
)

### Generating Module File
_generate_module_lisp(tatrialpkg
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tatrialpkg
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(tatrialpkg_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(tatrialpkg_generate_messages tatrialpkg_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pc/catkin_ws/src/tatrialpkg/msg/Num.msg" NAME_WE)
add_dependencies(tatrialpkg_generate_messages_lisp _tatrialpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc/catkin_ws/src/tatrialpkg/srv/AddTwoInit.srv" NAME_WE)
add_dependencies(tatrialpkg_generate_messages_lisp _tatrialpkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tatrialpkg_genlisp)
add_dependencies(tatrialpkg_genlisp tatrialpkg_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tatrialpkg_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(tatrialpkg
  "/home/pc/catkin_ws/src/tatrialpkg/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tatrialpkg
)

### Generating Services
_generate_srv_nodejs(tatrialpkg
  "/home/pc/catkin_ws/src/tatrialpkg/srv/AddTwoInit.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tatrialpkg
)

### Generating Module File
_generate_module_nodejs(tatrialpkg
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tatrialpkg
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(tatrialpkg_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(tatrialpkg_generate_messages tatrialpkg_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pc/catkin_ws/src/tatrialpkg/msg/Num.msg" NAME_WE)
add_dependencies(tatrialpkg_generate_messages_nodejs _tatrialpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc/catkin_ws/src/tatrialpkg/srv/AddTwoInit.srv" NAME_WE)
add_dependencies(tatrialpkg_generate_messages_nodejs _tatrialpkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tatrialpkg_gennodejs)
add_dependencies(tatrialpkg_gennodejs tatrialpkg_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tatrialpkg_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(tatrialpkg
  "/home/pc/catkin_ws/src/tatrialpkg/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tatrialpkg
)

### Generating Services
_generate_srv_py(tatrialpkg
  "/home/pc/catkin_ws/src/tatrialpkg/srv/AddTwoInit.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tatrialpkg
)

### Generating Module File
_generate_module_py(tatrialpkg
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tatrialpkg
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(tatrialpkg_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(tatrialpkg_generate_messages tatrialpkg_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pc/catkin_ws/src/tatrialpkg/msg/Num.msg" NAME_WE)
add_dependencies(tatrialpkg_generate_messages_py _tatrialpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc/catkin_ws/src/tatrialpkg/srv/AddTwoInit.srv" NAME_WE)
add_dependencies(tatrialpkg_generate_messages_py _tatrialpkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tatrialpkg_genpy)
add_dependencies(tatrialpkg_genpy tatrialpkg_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tatrialpkg_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tatrialpkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tatrialpkg
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(tatrialpkg_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tatrialpkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tatrialpkg
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(tatrialpkg_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tatrialpkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tatrialpkg
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(tatrialpkg_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tatrialpkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tatrialpkg
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(tatrialpkg_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tatrialpkg)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tatrialpkg\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tatrialpkg
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(tatrialpkg_generate_messages_py std_msgs_generate_messages_py)
endif()
