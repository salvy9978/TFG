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
CMAKE_BINARY_DIR = /home/salvy9978/Prueba/build/cpu1/default_cpu1

# Include any dependencies generated for this target.
include osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/depend.make

# Include the progress variables for this target.
include osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/progress.make

# Include the compile flags for this target's objects.
include osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/flags.make

osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/src/bsp_start.c.o: osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/flags.make
osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/src/bsp_start.c.o: /home/salvy9978/Prueba/osal/src/bsp/arm-rtems/src/bsp_start.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/salvy9978/Prueba/build/cpu1/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/src/bsp_start.c.o"
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1/osal/arm-rtems_impl && /home/salvy9978/development3/rtems-5/arm/bin/arm-rtems5-gcc   $(C_DEFINES) -B/home/salvy9978/development3/rtems-5/rpi_posix_enable/arm-rtems5/raspberrypi/lib -specs bsp_specs -qrtems -mcpu=arm1176jzf-s -fno-common   $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/osal_arm-rtems_impl.dir/src/bsp_start.c.o -c /home/salvy9978/Prueba/osal/src/bsp/arm-rtems/src/bsp_start.c

osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/src/bsp_start.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/osal_arm-rtems_impl.dir/src/bsp_start.c.i"
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1/osal/arm-rtems_impl && /home/salvy9978/development3/rtems-5/arm/bin/arm-rtems5-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/salvy9978/Prueba/osal/src/bsp/arm-rtems/src/bsp_start.c > CMakeFiles/osal_arm-rtems_impl.dir/src/bsp_start.c.i

osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/src/bsp_start.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/osal_arm-rtems_impl.dir/src/bsp_start.c.s"
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1/osal/arm-rtems_impl && /home/salvy9978/development3/rtems-5/arm/bin/arm-rtems5-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/salvy9978/Prueba/osal/src/bsp/arm-rtems/src/bsp_start.c -o CMakeFiles/osal_arm-rtems_impl.dir/src/bsp_start.c.s

osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/src/bsp_start.c.o.requires:

.PHONY : osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/src/bsp_start.c.o.requires

osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/src/bsp_start.c.o.provides: osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/src/bsp_start.c.o.requires
	$(MAKE) -f osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/build.make osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/src/bsp_start.c.o.provides.build
.PHONY : osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/src/bsp_start.c.o.provides

osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/src/bsp_start.c.o.provides.build: osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/src/bsp_start.c.o


osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/src/bsp_console.c.o: osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/flags.make
osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/src/bsp_console.c.o: /home/salvy9978/Prueba/osal/src/bsp/arm-rtems/src/bsp_console.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/salvy9978/Prueba/build/cpu1/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/src/bsp_console.c.o"
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1/osal/arm-rtems_impl && /home/salvy9978/development3/rtems-5/arm/bin/arm-rtems5-gcc   $(C_DEFINES) -B/home/salvy9978/development3/rtems-5/rpi_posix_enable/arm-rtems5/raspberrypi/lib -specs bsp_specs -qrtems -mcpu=arm1176jzf-s -fno-common   $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/osal_arm-rtems_impl.dir/src/bsp_console.c.o -c /home/salvy9978/Prueba/osal/src/bsp/arm-rtems/src/bsp_console.c

osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/src/bsp_console.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/osal_arm-rtems_impl.dir/src/bsp_console.c.i"
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1/osal/arm-rtems_impl && /home/salvy9978/development3/rtems-5/arm/bin/arm-rtems5-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/salvy9978/Prueba/osal/src/bsp/arm-rtems/src/bsp_console.c > CMakeFiles/osal_arm-rtems_impl.dir/src/bsp_console.c.i

osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/src/bsp_console.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/osal_arm-rtems_impl.dir/src/bsp_console.c.s"
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1/osal/arm-rtems_impl && /home/salvy9978/development3/rtems-5/arm/bin/arm-rtems5-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/salvy9978/Prueba/osal/src/bsp/arm-rtems/src/bsp_console.c -o CMakeFiles/osal_arm-rtems_impl.dir/src/bsp_console.c.s

osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/src/bsp_console.c.o.requires:

.PHONY : osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/src/bsp_console.c.o.requires

osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/src/bsp_console.c.o.provides: osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/src/bsp_console.c.o.requires
	$(MAKE) -f osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/build.make osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/src/bsp_console.c.o.provides.build
.PHONY : osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/src/bsp_console.c.o.provides

osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/src/bsp_console.c.o.provides.build: osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/src/bsp_console.c.o


osal_arm-rtems_impl: osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/src/bsp_start.c.o
osal_arm-rtems_impl: osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/src/bsp_console.c.o
osal_arm-rtems_impl: osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/build.make

.PHONY : osal_arm-rtems_impl

# Rule to build all files generated by this target.
osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/build: osal_arm-rtems_impl

.PHONY : osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/build

osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/requires: osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/src/bsp_start.c.o.requires
osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/requires: osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/src/bsp_console.c.o.requires

.PHONY : osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/requires

osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/clean:
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1/osal/arm-rtems_impl && $(CMAKE_COMMAND) -P CMakeFiles/osal_arm-rtems_impl.dir/cmake_clean.cmake
.PHONY : osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/clean

osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/depend:
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/salvy9978/Prueba/cfe /home/salvy9978/Prueba/osal/src/bsp/arm-rtems /home/salvy9978/Prueba/build/cpu1/default_cpu1 /home/salvy9978/Prueba/build/cpu1/default_cpu1/osal/arm-rtems_impl /home/salvy9978/Prueba/build/cpu1/default_cpu1/osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : osal/arm-rtems_impl/CMakeFiles/osal_arm-rtems_impl.dir/depend
