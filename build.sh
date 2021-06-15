#!/bin/bash

make distclean
make prep
make install


pushd build/exe/cpu1
tar cf eeprom-tar eeprom/
popd
$HOME/development3/rtems-5/arm/bin/rtems-bin2c ./build/exe/cpu1/eeprom-tar ./build/exe/cpu1/eeprom-tar
cp ./build/exe/cpu1/eeprom-tar.h ./psp/fsw/pc-rtems/inc/eeprom-tar.h
cp ./build/exe/cpu1/eeprom-tar.c ./psp/fsw/pc-rtems/src/eeprom-tar.c


make install


$HOME/development3/rtems-5/arm/bin/arm-rtems5-objcopy -Obinary ./build/exe/cpu1/core-cpu1.exe ./build/exe/cpu1/core-cpu1.bin


sudo screen /dev/ttyUSB0 115200







#QEMU DON'T WORK ARM
qemu-system-arm -M raspi2 -m 1G -kernel ./build/exe/cpu1/core-cpu1.exe -serial mon:stdio -nographic -s -S

$HOME/development3/rtems-5/arm/bin/arm-rtems5-gdb ./build/exe/cpu1/core-cpu1.exe


tar remote:1234
load
restore bcm2708-rpi-b-plus.dtb binary 0x2ef00000
set $r2=0x2ef00000
set scheduler-locking on
continue
























