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
include psp/ram_direct-rpi-rtems-impl/CMakeFiles/ram_direct.dir/depend.make

# Include the progress variables for this target.
include psp/ram_direct-rpi-rtems-impl/CMakeFiles/ram_direct.dir/progress.make

# Include the compile flags for this target's objects.
include psp/ram_direct-rpi-rtems-impl/CMakeFiles/ram_direct.dir/flags.make

psp/ram_direct-rpi-rtems-impl/CMakeFiles/ram_direct.dir/cfe_psp_ram_direct.c.o: psp/ram_direct-rpi-rtems-impl/CMakeFiles/ram_direct.dir/flags.make
psp/ram_direct-rpi-rtems-impl/CMakeFiles/ram_direct.dir/cfe_psp_ram_direct.c.o: /home/salvy9978/Prueba/psp/fsw/modules/ram_direct/cfe_psp_ram_direct.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/salvy9978/Prueba/build/cpu1/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object psp/ram_direct-rpi-rtems-impl/CMakeFiles/ram_direct.dir/cfe_psp_ram_direct.c.o"
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1/psp/ram_direct-rpi-rtems-impl && /home/salvy9978/development3/rtems-5/arm/bin/arm-rtems5-gcc   $(C_DEFINES) -B/home/salvy9978/development3/rtems-5/rpi_posix_enable/arm-rtems5/raspberrypi/lib -specs bsp_specs -qrtems -mcpu=arm1176jzf-s -fno-common   $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ram_direct.dir/cfe_psp_ram_direct.c.o -c /home/salvy9978/Prueba/psp/fsw/modules/ram_direct/cfe_psp_ram_direct.c

psp/ram_direct-rpi-rtems-impl/CMakeFiles/ram_direct.dir/cfe_psp_ram_direct.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ram_direct.dir/cfe_psp_ram_direct.c.i"
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1/psp/ram_direct-rpi-rtems-impl && /home/salvy9978/development3/rtems-5/arm/bin/arm-rtems5-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/salvy9978/Prueba/psp/fsw/modules/ram_direct/cfe_psp_ram_direct.c > CMakeFiles/ram_direct.dir/cfe_psp_ram_direct.c.i

psp/ram_direct-rpi-rtems-impl/CMakeFiles/ram_direct.dir/cfe_psp_ram_direct.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ram_direct.dir/cfe_psp_ram_direct.c.s"
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1/psp/ram_direct-rpi-rtems-impl && /home/salvy9978/development3/rtems-5/arm/bin/arm-rtems5-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/salvy9978/Prueba/psp/fsw/modules/ram_direct/cfe_psp_ram_direct.c -o CMakeFiles/ram_direct.dir/cfe_psp_ram_direct.c.s

psp/ram_direct-rpi-rtems-impl/CMakeFiles/ram_direct.dir/cfe_psp_ram_direct.c.o.requires:

.PHONY : psp/ram_direct-rpi-rtems-impl/CMakeFiles/ram_direct.dir/cfe_psp_ram_direct.c.o.requires

psp/ram_direct-rpi-rtems-impl/CMakeFiles/ram_direct.dir/cfe_psp_ram_direct.c.o.provides: psp/ram_direct-rpi-rtems-impl/CMakeFiles/ram_direct.dir/cfe_psp_ram_direct.c.o.requires
	$(MAKE) -f psp/ram_direct-rpi-rtems-impl/CMakeFiles/ram_direct.dir/build.make psp/ram_direct-rpi-rtems-impl/CMakeFiles/ram_direct.dir/cfe_psp_ram_direct.c.o.provides.build
.PHONY : psp/ram_direct-rpi-rtems-impl/CMakeFiles/ram_direct.dir/cfe_psp_ram_direct.c.o.provides

psp/ram_direct-rpi-rtems-impl/CMakeFiles/ram_direct.dir/cfe_psp_ram_direct.c.o.provides.build: psp/ram_direct-rpi-rtems-impl/CMakeFiles/ram_direct.dir/cfe_psp_ram_direct.c.o


# Object files for target ram_direct
ram_direct_OBJECTS = \
"CMakeFiles/ram_direct.dir/cfe_psp_ram_direct.c.o"

# External object files for target ram_direct
ram_direct_EXTERNAL_OBJECTS =

psp/ram_direct-rpi-rtems-impl/libram_direct.a: psp/ram_direct-rpi-rtems-impl/CMakeFiles/ram_direct.dir/cfe_psp_ram_direct.c.o
psp/ram_direct-rpi-rtems-impl/libram_direct.a: psp/ram_direct-rpi-rtems-impl/CMakeFiles/ram_direct.dir/build.make
psp/ram_direct-rpi-rtems-impl/libram_direct.a: psp/ram_direct-rpi-rtems-impl/CMakeFiles/ram_direct.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/salvy9978/Prueba/build/cpu1/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libram_direct.a"
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1/psp/ram_direct-rpi-rtems-impl && $(CMAKE_COMMAND) -P CMakeFiles/ram_direct.dir/cmake_clean_target.cmake
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1/psp/ram_direct-rpi-rtems-impl && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ram_direct.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
psp/ram_direct-rpi-rtems-impl/CMakeFiles/ram_direct.dir/build: psp/ram_direct-rpi-rtems-impl/libram_direct.a

.PHONY : psp/ram_direct-rpi-rtems-impl/CMakeFiles/ram_direct.dir/build

psp/ram_direct-rpi-rtems-impl/CMakeFiles/ram_direct.dir/requires: psp/ram_direct-rpi-rtems-impl/CMakeFiles/ram_direct.dir/cfe_psp_ram_direct.c.o.requires

.PHONY : psp/ram_direct-rpi-rtems-impl/CMakeFiles/ram_direct.dir/requires

psp/ram_direct-rpi-rtems-impl/CMakeFiles/ram_direct.dir/clean:
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1/psp/ram_direct-rpi-rtems-impl && $(CMAKE_COMMAND) -P CMakeFiles/ram_direct.dir/cmake_clean.cmake
.PHONY : psp/ram_direct-rpi-rtems-impl/CMakeFiles/ram_direct.dir/clean

psp/ram_direct-rpi-rtems-impl/CMakeFiles/ram_direct.dir/depend:
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/salvy9978/Prueba/cfe /home/salvy9978/Prueba/psp/fsw/modules/ram_direct /home/salvy9978/Prueba/build/cpu1/default_cpu1 /home/salvy9978/Prueba/build/cpu1/default_cpu1/psp/ram_direct-rpi-rtems-impl /home/salvy9978/Prueba/build/cpu1/default_cpu1/psp/ram_direct-rpi-rtems-impl/CMakeFiles/ram_direct.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : psp/ram_direct-rpi-rtems-impl/CMakeFiles/ram_direct.dir/depend
