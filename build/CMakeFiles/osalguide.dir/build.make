# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/salvy9978/Prueba/cfe

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/salvy9978/Prueba/build

# Utility rule file for osalguide.

# Include the progress variables for this target.
include CMakeFiles/osalguide.dir/progress.make

CMakeFiles/osalguide:
	cd /home/salvy9978/Prueba/build/doc && doxygen osalguide.doxyfile

osalguide: CMakeFiles/osalguide
osalguide: CMakeFiles/osalguide.dir/build.make

.PHONY : osalguide

# Rule to build all files generated by this target.
CMakeFiles/osalguide.dir/build: osalguide

.PHONY : CMakeFiles/osalguide.dir/build

CMakeFiles/osalguide.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/osalguide.dir/cmake_clean.cmake
.PHONY : CMakeFiles/osalguide.dir/clean

CMakeFiles/osalguide.dir/depend:
	cd /home/salvy9978/Prueba/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/salvy9978/Prueba/cfe /home/salvy9978/Prueba/cfe /home/salvy9978/Prueba/build /home/salvy9978/Prueba/build /home/salvy9978/Prueba/build/CMakeFiles/osalguide.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/osalguide.dir/depend

