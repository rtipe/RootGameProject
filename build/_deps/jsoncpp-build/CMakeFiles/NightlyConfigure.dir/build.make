# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.27.6/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.27.6/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/vincentballandi/Documents/cppApp/RootGameProject

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/vincentballandi/Documents/cppApp/RootGameProject/build

# Utility rule file for NightlyConfigure.

# Include any custom commands dependencies for this target.
include _deps/jsoncpp-build/CMakeFiles/NightlyConfigure.dir/compiler_depend.make

# Include the progress variables for this target.
include _deps/jsoncpp-build/CMakeFiles/NightlyConfigure.dir/progress.make

_deps/jsoncpp-build/CMakeFiles/NightlyConfigure:
	cd /Users/vincentballandi/Documents/cppApp/RootGameProject/build/_deps/jsoncpp-build && /opt/homebrew/Cellar/cmake/3.27.6/bin/ctest -D NightlyConfigure

NightlyConfigure: _deps/jsoncpp-build/CMakeFiles/NightlyConfigure
NightlyConfigure: _deps/jsoncpp-build/CMakeFiles/NightlyConfigure.dir/build.make
.PHONY : NightlyConfigure

# Rule to build all files generated by this target.
_deps/jsoncpp-build/CMakeFiles/NightlyConfigure.dir/build: NightlyConfigure
.PHONY : _deps/jsoncpp-build/CMakeFiles/NightlyConfigure.dir/build

_deps/jsoncpp-build/CMakeFiles/NightlyConfigure.dir/clean:
	cd /Users/vincentballandi/Documents/cppApp/RootGameProject/build/_deps/jsoncpp-build && $(CMAKE_COMMAND) -P CMakeFiles/NightlyConfigure.dir/cmake_clean.cmake
.PHONY : _deps/jsoncpp-build/CMakeFiles/NightlyConfigure.dir/clean

_deps/jsoncpp-build/CMakeFiles/NightlyConfigure.dir/depend:
	cd /Users/vincentballandi/Documents/cppApp/RootGameProject/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/vincentballandi/Documents/cppApp/RootGameProject /Users/vincentballandi/Documents/cppApp/RootGameProject/build/_deps/jsoncpp-src /Users/vincentballandi/Documents/cppApp/RootGameProject/build /Users/vincentballandi/Documents/cppApp/RootGameProject/build/_deps/jsoncpp-build /Users/vincentballandi/Documents/cppApp/RootGameProject/build/_deps/jsoncpp-build/CMakeFiles/NightlyConfigure.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : _deps/jsoncpp-build/CMakeFiles/NightlyConfigure.dir/depend

