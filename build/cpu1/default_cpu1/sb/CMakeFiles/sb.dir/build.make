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
include sb/CMakeFiles/sb.dir/depend.make

# Include the progress variables for this target.
include sb/CMakeFiles/sb.dir/progress.make

# Include the compile flags for this target's objects.
include sb/CMakeFiles/sb.dir/flags.make

sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_api.c.o: sb/CMakeFiles/sb.dir/flags.make
sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_api.c.o: /home/salvy9978/Prueba/cfe/modules/sb/fsw/src/cfe_sb_api.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/salvy9978/Prueba/build/cpu1/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_api.c.o"
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1/sb && /home/salvy9978/development3/rtems-5/arm/bin/arm-rtems5-gcc   $(C_DEFINES) -B/home/salvy9978/development3/rtems-5/rpi_posix_enable/arm-rtems5/raspberrypi/lib -specs bsp_specs -qrtems -mcpu=arm1176jzf-s -fno-common   $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sb.dir/fsw/src/cfe_sb_api.c.o -c /home/salvy9978/Prueba/cfe/modules/sb/fsw/src/cfe_sb_api.c

sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_api.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sb.dir/fsw/src/cfe_sb_api.c.i"
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1/sb && /home/salvy9978/development3/rtems-5/arm/bin/arm-rtems5-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/salvy9978/Prueba/cfe/modules/sb/fsw/src/cfe_sb_api.c > CMakeFiles/sb.dir/fsw/src/cfe_sb_api.c.i

sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_api.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sb.dir/fsw/src/cfe_sb_api.c.s"
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1/sb && /home/salvy9978/development3/rtems-5/arm/bin/arm-rtems5-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/salvy9978/Prueba/cfe/modules/sb/fsw/src/cfe_sb_api.c -o CMakeFiles/sb.dir/fsw/src/cfe_sb_api.c.s

sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_api.c.o.requires:

.PHONY : sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_api.c.o.requires

sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_api.c.o.provides: sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_api.c.o.requires
	$(MAKE) -f sb/CMakeFiles/sb.dir/build.make sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_api.c.o.provides.build
.PHONY : sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_api.c.o.provides

sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_api.c.o.provides.build: sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_api.c.o


sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_buf.c.o: sb/CMakeFiles/sb.dir/flags.make
sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_buf.c.o: /home/salvy9978/Prueba/cfe/modules/sb/fsw/src/cfe_sb_buf.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/salvy9978/Prueba/build/cpu1/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_buf.c.o"
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1/sb && /home/salvy9978/development3/rtems-5/arm/bin/arm-rtems5-gcc   $(C_DEFINES) -B/home/salvy9978/development3/rtems-5/rpi_posix_enable/arm-rtems5/raspberrypi/lib -specs bsp_specs -qrtems -mcpu=arm1176jzf-s -fno-common   $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sb.dir/fsw/src/cfe_sb_buf.c.o -c /home/salvy9978/Prueba/cfe/modules/sb/fsw/src/cfe_sb_buf.c

sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_buf.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sb.dir/fsw/src/cfe_sb_buf.c.i"
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1/sb && /home/salvy9978/development3/rtems-5/arm/bin/arm-rtems5-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/salvy9978/Prueba/cfe/modules/sb/fsw/src/cfe_sb_buf.c > CMakeFiles/sb.dir/fsw/src/cfe_sb_buf.c.i

sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_buf.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sb.dir/fsw/src/cfe_sb_buf.c.s"
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1/sb && /home/salvy9978/development3/rtems-5/arm/bin/arm-rtems5-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/salvy9978/Prueba/cfe/modules/sb/fsw/src/cfe_sb_buf.c -o CMakeFiles/sb.dir/fsw/src/cfe_sb_buf.c.s

sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_buf.c.o.requires:

.PHONY : sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_buf.c.o.requires

sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_buf.c.o.provides: sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_buf.c.o.requires
	$(MAKE) -f sb/CMakeFiles/sb.dir/build.make sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_buf.c.o.provides.build
.PHONY : sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_buf.c.o.provides

sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_buf.c.o.provides.build: sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_buf.c.o


sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_init.c.o: sb/CMakeFiles/sb.dir/flags.make
sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_init.c.o: /home/salvy9978/Prueba/cfe/modules/sb/fsw/src/cfe_sb_init.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/salvy9978/Prueba/build/cpu1/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_init.c.o"
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1/sb && /home/salvy9978/development3/rtems-5/arm/bin/arm-rtems5-gcc   $(C_DEFINES) -B/home/salvy9978/development3/rtems-5/rpi_posix_enable/arm-rtems5/raspberrypi/lib -specs bsp_specs -qrtems -mcpu=arm1176jzf-s -fno-common   $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sb.dir/fsw/src/cfe_sb_init.c.o -c /home/salvy9978/Prueba/cfe/modules/sb/fsw/src/cfe_sb_init.c

sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_init.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sb.dir/fsw/src/cfe_sb_init.c.i"
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1/sb && /home/salvy9978/development3/rtems-5/arm/bin/arm-rtems5-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/salvy9978/Prueba/cfe/modules/sb/fsw/src/cfe_sb_init.c > CMakeFiles/sb.dir/fsw/src/cfe_sb_init.c.i

sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_init.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sb.dir/fsw/src/cfe_sb_init.c.s"
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1/sb && /home/salvy9978/development3/rtems-5/arm/bin/arm-rtems5-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/salvy9978/Prueba/cfe/modules/sb/fsw/src/cfe_sb_init.c -o CMakeFiles/sb.dir/fsw/src/cfe_sb_init.c.s

sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_init.c.o.requires:

.PHONY : sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_init.c.o.requires

sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_init.c.o.provides: sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_init.c.o.requires
	$(MAKE) -f sb/CMakeFiles/sb.dir/build.make sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_init.c.o.provides.build
.PHONY : sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_init.c.o.provides

sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_init.c.o.provides.build: sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_init.c.o


sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_msg_id_util.c.o: sb/CMakeFiles/sb.dir/flags.make
sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_msg_id_util.c.o: /home/salvy9978/Prueba/cfe/modules/sb/fsw/src/cfe_sb_msg_id_util.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/salvy9978/Prueba/build/cpu1/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_msg_id_util.c.o"
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1/sb && /home/salvy9978/development3/rtems-5/arm/bin/arm-rtems5-gcc   $(C_DEFINES) -B/home/salvy9978/development3/rtems-5/rpi_posix_enable/arm-rtems5/raspberrypi/lib -specs bsp_specs -qrtems -mcpu=arm1176jzf-s -fno-common   $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sb.dir/fsw/src/cfe_sb_msg_id_util.c.o -c /home/salvy9978/Prueba/cfe/modules/sb/fsw/src/cfe_sb_msg_id_util.c

sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_msg_id_util.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sb.dir/fsw/src/cfe_sb_msg_id_util.c.i"
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1/sb && /home/salvy9978/development3/rtems-5/arm/bin/arm-rtems5-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/salvy9978/Prueba/cfe/modules/sb/fsw/src/cfe_sb_msg_id_util.c > CMakeFiles/sb.dir/fsw/src/cfe_sb_msg_id_util.c.i

sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_msg_id_util.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sb.dir/fsw/src/cfe_sb_msg_id_util.c.s"
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1/sb && /home/salvy9978/development3/rtems-5/arm/bin/arm-rtems5-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/salvy9978/Prueba/cfe/modules/sb/fsw/src/cfe_sb_msg_id_util.c -o CMakeFiles/sb.dir/fsw/src/cfe_sb_msg_id_util.c.s

sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_msg_id_util.c.o.requires:

.PHONY : sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_msg_id_util.c.o.requires

sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_msg_id_util.c.o.provides: sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_msg_id_util.c.o.requires
	$(MAKE) -f sb/CMakeFiles/sb.dir/build.make sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_msg_id_util.c.o.provides.build
.PHONY : sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_msg_id_util.c.o.provides

sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_msg_id_util.c.o.provides.build: sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_msg_id_util.c.o


sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_priv.c.o: sb/CMakeFiles/sb.dir/flags.make
sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_priv.c.o: /home/salvy9978/Prueba/cfe/modules/sb/fsw/src/cfe_sb_priv.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/salvy9978/Prueba/build/cpu1/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_priv.c.o"
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1/sb && /home/salvy9978/development3/rtems-5/arm/bin/arm-rtems5-gcc   $(C_DEFINES) -B/home/salvy9978/development3/rtems-5/rpi_posix_enable/arm-rtems5/raspberrypi/lib -specs bsp_specs -qrtems -mcpu=arm1176jzf-s -fno-common   $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sb.dir/fsw/src/cfe_sb_priv.c.o -c /home/salvy9978/Prueba/cfe/modules/sb/fsw/src/cfe_sb_priv.c

sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_priv.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sb.dir/fsw/src/cfe_sb_priv.c.i"
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1/sb && /home/salvy9978/development3/rtems-5/arm/bin/arm-rtems5-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/salvy9978/Prueba/cfe/modules/sb/fsw/src/cfe_sb_priv.c > CMakeFiles/sb.dir/fsw/src/cfe_sb_priv.c.i

sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_priv.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sb.dir/fsw/src/cfe_sb_priv.c.s"
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1/sb && /home/salvy9978/development3/rtems-5/arm/bin/arm-rtems5-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/salvy9978/Prueba/cfe/modules/sb/fsw/src/cfe_sb_priv.c -o CMakeFiles/sb.dir/fsw/src/cfe_sb_priv.c.s

sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_priv.c.o.requires:

.PHONY : sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_priv.c.o.requires

sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_priv.c.o.provides: sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_priv.c.o.requires
	$(MAKE) -f sb/CMakeFiles/sb.dir/build.make sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_priv.c.o.provides.build
.PHONY : sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_priv.c.o.provides

sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_priv.c.o.provides.build: sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_priv.c.o


sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_task.c.o: sb/CMakeFiles/sb.dir/flags.make
sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_task.c.o: /home/salvy9978/Prueba/cfe/modules/sb/fsw/src/cfe_sb_task.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/salvy9978/Prueba/build/cpu1/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_task.c.o"
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1/sb && /home/salvy9978/development3/rtems-5/arm/bin/arm-rtems5-gcc   $(C_DEFINES) -B/home/salvy9978/development3/rtems-5/rpi_posix_enable/arm-rtems5/raspberrypi/lib -specs bsp_specs -qrtems -mcpu=arm1176jzf-s -fno-common   $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sb.dir/fsw/src/cfe_sb_task.c.o -c /home/salvy9978/Prueba/cfe/modules/sb/fsw/src/cfe_sb_task.c

sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_task.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sb.dir/fsw/src/cfe_sb_task.c.i"
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1/sb && /home/salvy9978/development3/rtems-5/arm/bin/arm-rtems5-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/salvy9978/Prueba/cfe/modules/sb/fsw/src/cfe_sb_task.c > CMakeFiles/sb.dir/fsw/src/cfe_sb_task.c.i

sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_task.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sb.dir/fsw/src/cfe_sb_task.c.s"
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1/sb && /home/salvy9978/development3/rtems-5/arm/bin/arm-rtems5-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/salvy9978/Prueba/cfe/modules/sb/fsw/src/cfe_sb_task.c -o CMakeFiles/sb.dir/fsw/src/cfe_sb_task.c.s

sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_task.c.o.requires:

.PHONY : sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_task.c.o.requires

sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_task.c.o.provides: sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_task.c.o.requires
	$(MAKE) -f sb/CMakeFiles/sb.dir/build.make sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_task.c.o.provides.build
.PHONY : sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_task.c.o.provides

sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_task.c.o.provides.build: sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_task.c.o


sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_util.c.o: sb/CMakeFiles/sb.dir/flags.make
sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_util.c.o: /home/salvy9978/Prueba/cfe/modules/sb/fsw/src/cfe_sb_util.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/salvy9978/Prueba/build/cpu1/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_util.c.o"
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1/sb && /home/salvy9978/development3/rtems-5/arm/bin/arm-rtems5-gcc   $(C_DEFINES) -B/home/salvy9978/development3/rtems-5/rpi_posix_enable/arm-rtems5/raspberrypi/lib -specs bsp_specs -qrtems -mcpu=arm1176jzf-s -fno-common   $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sb.dir/fsw/src/cfe_sb_util.c.o -c /home/salvy9978/Prueba/cfe/modules/sb/fsw/src/cfe_sb_util.c

sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_util.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sb.dir/fsw/src/cfe_sb_util.c.i"
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1/sb && /home/salvy9978/development3/rtems-5/arm/bin/arm-rtems5-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/salvy9978/Prueba/cfe/modules/sb/fsw/src/cfe_sb_util.c > CMakeFiles/sb.dir/fsw/src/cfe_sb_util.c.i

sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_util.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sb.dir/fsw/src/cfe_sb_util.c.s"
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1/sb && /home/salvy9978/development3/rtems-5/arm/bin/arm-rtems5-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/salvy9978/Prueba/cfe/modules/sb/fsw/src/cfe_sb_util.c -o CMakeFiles/sb.dir/fsw/src/cfe_sb_util.c.s

sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_util.c.o.requires:

.PHONY : sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_util.c.o.requires

sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_util.c.o.provides: sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_util.c.o.requires
	$(MAKE) -f sb/CMakeFiles/sb.dir/build.make sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_util.c.o.provides.build
.PHONY : sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_util.c.o.provides

sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_util.c.o.provides.build: sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_util.c.o


# Object files for target sb
sb_OBJECTS = \
"CMakeFiles/sb.dir/fsw/src/cfe_sb_api.c.o" \
"CMakeFiles/sb.dir/fsw/src/cfe_sb_buf.c.o" \
"CMakeFiles/sb.dir/fsw/src/cfe_sb_init.c.o" \
"CMakeFiles/sb.dir/fsw/src/cfe_sb_msg_id_util.c.o" \
"CMakeFiles/sb.dir/fsw/src/cfe_sb_priv.c.o" \
"CMakeFiles/sb.dir/fsw/src/cfe_sb_task.c.o" \
"CMakeFiles/sb.dir/fsw/src/cfe_sb_util.c.o"

# External object files for target sb
sb_EXTERNAL_OBJECTS =

sb/libsb.a: sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_api.c.o
sb/libsb.a: sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_buf.c.o
sb/libsb.a: sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_init.c.o
sb/libsb.a: sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_msg_id_util.c.o
sb/libsb.a: sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_priv.c.o
sb/libsb.a: sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_task.c.o
sb/libsb.a: sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_util.c.o
sb/libsb.a: sb/CMakeFiles/sb.dir/build.make
sb/libsb.a: sb/CMakeFiles/sb.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/salvy9978/Prueba/build/cpu1/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking C static library libsb.a"
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1/sb && $(CMAKE_COMMAND) -P CMakeFiles/sb.dir/cmake_clean_target.cmake
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1/sb && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sb.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
sb/CMakeFiles/sb.dir/build: sb/libsb.a

.PHONY : sb/CMakeFiles/sb.dir/build

sb/CMakeFiles/sb.dir/requires: sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_api.c.o.requires
sb/CMakeFiles/sb.dir/requires: sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_buf.c.o.requires
sb/CMakeFiles/sb.dir/requires: sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_init.c.o.requires
sb/CMakeFiles/sb.dir/requires: sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_msg_id_util.c.o.requires
sb/CMakeFiles/sb.dir/requires: sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_priv.c.o.requires
sb/CMakeFiles/sb.dir/requires: sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_task.c.o.requires
sb/CMakeFiles/sb.dir/requires: sb/CMakeFiles/sb.dir/fsw/src/cfe_sb_util.c.o.requires

.PHONY : sb/CMakeFiles/sb.dir/requires

sb/CMakeFiles/sb.dir/clean:
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1/sb && $(CMAKE_COMMAND) -P CMakeFiles/sb.dir/cmake_clean.cmake
.PHONY : sb/CMakeFiles/sb.dir/clean

sb/CMakeFiles/sb.dir/depend:
	cd /home/salvy9978/Prueba/build/cpu1/default_cpu1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/salvy9978/Prueba/cfe /home/salvy9978/Prueba/cfe/modules/sb /home/salvy9978/Prueba/build/cpu1/default_cpu1 /home/salvy9978/Prueba/build/cpu1/default_cpu1/sb /home/salvy9978/Prueba/build/cpu1/default_cpu1/sb/CMakeFiles/sb.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sb/CMakeFiles/sb.dir/depend

