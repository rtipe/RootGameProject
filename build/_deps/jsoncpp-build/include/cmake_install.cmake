# Install script for directory: /Users/vincentballandi/Documents/cppApp/RootGameProject/build/_deps/jsoncpp-src/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/json" TYPE FILE FILES
    "/Users/vincentballandi/Documents/cppApp/RootGameProject/build/_deps/jsoncpp-src/include/json/allocator.h"
    "/Users/vincentballandi/Documents/cppApp/RootGameProject/build/_deps/jsoncpp-src/include/json/assertions.h"
    "/Users/vincentballandi/Documents/cppApp/RootGameProject/build/_deps/jsoncpp-src/include/json/config.h"
    "/Users/vincentballandi/Documents/cppApp/RootGameProject/build/_deps/jsoncpp-src/include/json/forwards.h"
    "/Users/vincentballandi/Documents/cppApp/RootGameProject/build/_deps/jsoncpp-src/include/json/json.h"
    "/Users/vincentballandi/Documents/cppApp/RootGameProject/build/_deps/jsoncpp-src/include/json/json_features.h"
    "/Users/vincentballandi/Documents/cppApp/RootGameProject/build/_deps/jsoncpp-src/include/json/reader.h"
    "/Users/vincentballandi/Documents/cppApp/RootGameProject/build/_deps/jsoncpp-src/include/json/value.h"
    "/Users/vincentballandi/Documents/cppApp/RootGameProject/build/_deps/jsoncpp-src/include/json/version.h"
    "/Users/vincentballandi/Documents/cppApp/RootGameProject/build/_deps/jsoncpp-src/include/json/writer.h"
    )
endif()

