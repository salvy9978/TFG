# Install script for directory: /home/salvy9978/Prueba/psp

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/exe")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "debug")
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
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/salvy9978/Prueba/build/cpu1/default_cpu1/psp/rpi-rtems-impl/cmake_install.cmake")
  include("/home/salvy9978/Prueba/build/cpu1/default_cpu1/psp/rpi-rtems-shared/cmake_install.cmake")
  include("/home/salvy9978/Prueba/build/cpu1/default_cpu1/psp/soft_timebase-rpi-rtems-impl/cmake_install.cmake")
  include("/home/salvy9978/Prueba/build/cpu1/default_cpu1/psp/timebase_posix_clock-rpi-rtems-impl/cmake_install.cmake")
  include("/home/salvy9978/Prueba/build/cpu1/default_cpu1/psp/eeprom_notimpl-rpi-rtems-impl/cmake_install.cmake")
  include("/home/salvy9978/Prueba/build/cpu1/default_cpu1/psp/ram_direct-rpi-rtems-impl/cmake_install.cmake")
  include("/home/salvy9978/Prueba/build/cpu1/default_cpu1/psp/port_notimpl-rpi-rtems-impl/cmake_install.cmake")

endif()

