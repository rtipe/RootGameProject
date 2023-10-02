# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/vincentballandi/Documents/cppApp/RootGameProject/build/_deps/jsoncpp-src"
  "/Users/vincentballandi/Documents/cppApp/RootGameProject/build/_deps/jsoncpp-build"
  "/Users/vincentballandi/Documents/cppApp/RootGameProject/build/_deps/jsoncpp-subbuild/jsoncpp-populate-prefix"
  "/Users/vincentballandi/Documents/cppApp/RootGameProject/build/_deps/jsoncpp-subbuild/jsoncpp-populate-prefix/tmp"
  "/Users/vincentballandi/Documents/cppApp/RootGameProject/build/_deps/jsoncpp-subbuild/jsoncpp-populate-prefix/src/jsoncpp-populate-stamp"
  "/Users/vincentballandi/Documents/cppApp/RootGameProject/build/_deps/jsoncpp-subbuild/jsoncpp-populate-prefix/src"
  "/Users/vincentballandi/Documents/cppApp/RootGameProject/build/_deps/jsoncpp-subbuild/jsoncpp-populate-prefix/src/jsoncpp-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/vincentballandi/Documents/cppApp/RootGameProject/build/_deps/jsoncpp-subbuild/jsoncpp-populate-prefix/src/jsoncpp-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/vincentballandi/Documents/cppApp/RootGameProject/build/_deps/jsoncpp-subbuild/jsoncpp-populate-prefix/src/jsoncpp-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
