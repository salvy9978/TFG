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
include psp/soft_timebase-rpi-rtems-impl/CMakeFiles/soft_timebase.dir/depend.make

# Include the progress variables for this target.
include psp/soft_timebase-rpi-rtems-impl/CMakeFiles/soft_timebase.dir/progress.make

# Include the compile flags for this target's objects.
include psp/soft_timebase-rpi-rtems-impl/CMakeFiles/soft_timebase.dir/flags.make

psp/soft_timebase-rpi-rtems-impl/CMakeFiles/soft_timebase.dir/cfe_psp_soft_timebase.c.o: psp/soft_timebase-rpi-rtems-impl/CMakeFiles/soft_timebase.dir/flags.make
psp/soft_timebase-rpi-rtems-impl/CMakeFiles/soft_timebase.dir/cfe_psp_soft_timebase.c.o: /home/salvy9978/Prueba/psp/fsw/modules/soft_timebase/cfe_psp_soft_timebase.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/salvy9978/Prueba/build/cpu1/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object psp/soft_timebase-rpi-rtems-impl/CMakeFiles/soft_timebase.dir/cfe_psp_soft_timebase.c.o"
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1/psp/soft_timebase-rpi-rtems-impl && /home/salvy9978/development3/rtems-5/arm/bin/arm-rtems5-gcc   $(C_DEFINES) -B/home/salvy9978/development3/rtems-5/rpi_posix_enable/arm-rtems5/raspberrypi/lib -specs bsp_specs -qrtems -mcpu=arm1176jzf-s -fno-common   $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/soft_timebase.dir/cfe_psp_soft_timebase.c.o -c /home/salvy9978/Prueba/psp/fsw/modules/soft_timebase/cfe_psp_soft_timebase.c

psp/soft_timebase-rpi-rtems-impl/CMakeFiles/soft_timebase.dir/cfe_psp_soft_timebase.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/soft_timebase.dir/cfe_psp_soft_timebase.c.i"
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1/psp/soft_timebase-rpi-rtems-impl && /home/salvy9978/development3/rtems-5/arm/bin/arm-rtems5-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/salvy9978/Prueba/psp/fsw/modules/soft_timebase/cfe_psp_soft_timebase.c > CMakeFiles/soft_timebase.dir/cfe_psp_soft_timebase.c.i

psp/soft_timebase-rpi-rtems-impl/CMakeFiles/soft_timebase.dir/cfe_psp_soft_timebase.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/soft_timebase.dir/cfe_psp_soft_timebase.c.s"
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1/psp/soft_timebase-rpi-rtems-impl && /home/salvy9978/development3/rtems-5/arm/bin/arm-rtems5-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/salvy9978/Prueba/psp/fsw/modules/soft_timebase/cfe_psp_soft_timebase.c -o CMakeFiles/soft_timebase.dir/cfe_psp_soft_timebase.c.s

psp/soft_timebase-rpi-rtems-impl/CMakeFiles/soft_timebase.dir/cfe_psp_soft_timebase.c.o.requires:

.PHONY : psp/soft_timebase-rpi-rtems-impl/CMakeFiles/soft_timebase.dir/cfe_psp_soft_timebase.c.o.requires

psp/soft_timebase-rpi-rtems-impl/CMakeFiles/soft_timebase.dir/cfe_psp_soft_timebase.c.o.provides: psp/soft_timebase-rpi-rtems-impl/CMakeFiles/soft_timebase.dir/cfe_psp_soft_timebase.c.o.requires
	$(MAKE) -f psp/soft_timebase-rpi-rtems-impl/CMakeFiles/soft_timebase.dir/build.make psp/soft_timebase-rpi-rtems-impl/CMakeFiles/soft_timebase.dir/cfe_psp_soft_timebase.c.o.provides.build
.PHONY : psp/soft_timebase-rpi-rtems-impl/CMakeFiles/soft_timebase.dir/cfe_psp_soft_timebase.c.o.provides

psp/soft_timebase-rpi-rtems-impl/CMakeFiles/soft_timebase.dir/cfe_psp_soft_timebase.c.o.provides.build: psp/soft_timebase-rpi-rtems-impl/CMakeFiles/soft_timebase.dir/cfe_psp_soft_timebase.c.o


# Object files for target soft_timebase
soft_timebase_OBJECTS = \
"CMakeFiles/soft_timebase.dir/cfe_psp_soft_timebase.c.o"

# External object files for target soft_timebase
soft_timebase_EXTERNAL_OBJECTS =

psp/soft_timebase-rpi-rtems-impl/libsoft_timebase.a: psp/soft_timebase-rpi-rtems-impl/CMakeFiles/soft_timebase.dir/cfe_psp_soft_timebase.c.o
psp/soft_timebase-rpi-rtems-impl/libsoft_timebase.a: psp/soft_timebase-rpi-rtems-impl/CMakeFiles/soft_timebase.dir/build.make
psp/soft_timebase-rpi-rtems-impl/libsoft_timebase.a: psp/soft_timebase-rpi-rtems-impl/CMakeFiles/soft_timebase.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/salvy9978/Prueba/build/cpu1/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libsoft_timebase.a"
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1/psp/soft_timebase-rpi-rtems-impl && $(CMAKE_COMMAND) -P CMakeFiles/soft_timebase.dir/cmake_clean_target.cmake
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1/psp/soft_timebase-rpi-rtems-impl && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/soft_timebase.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
psp/soft_timebase-rpi-rtems-impl/CMakeFiles/soft_timebase.dir/build: psp/soft_timebase-rpi-rtems-impl/libsoft_timebase.a

.PHONY : psp/soft_timebase-rpi-rtems-impl/CMakeFiles/soft_timebase.dir/build

psp/soft_timebase-rpi-rtems-impl/CMakeFiles/soft_timebase.dir/requires: psp/soft_timebase-rpi-rtems-impl/CMakeFiles/soft_timebase.dir/cfe_psp_soft_timebase.c.o.requires

.PHONY : psp/soft_timebase-rpi-rtems-impl/CMakeFiles/soft_timebase.dir/requires

psp/soft_timebase-rpi-rtems-impl/CMakeFiles/soft_timebase.dir/clean:
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1/psp/soft_timebase-rpi-rtems-impl && $(CMAKE_COMMAND) -P CMakeFiles/soft_timebase.dir/cmake_clean.cmake
.PHONY : psp/soft_timebase-rpi-rtems-impl/CMakeFiles/soft_timebase.dir/clean

psp/soft_timebase-rpi-rtems-impl/CMakeFiles/soft_timebase.dir/depend:
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/salvy9978/Prueba/cfe /home/salvy9978/Prueba/psp/fsw/modules/soft_timebase /home/salvy9978/Prueba/build/cpu1/default_cpu1 /home/salvy9978/Prueba/build/cpu1/default_cpu1/psp/soft_timebase-rpi-rtems-impl /home/salvy9978/Prueba/build/cpu1/default_cpu1/psp/soft_timebase-rpi-rtems-impl/CMakeFiles/soft_timebase.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : psp/soft_timebase-rpi-rtems-impl/CMakeFiles/soft_timebase.dir/depend

