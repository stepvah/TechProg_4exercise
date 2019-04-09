#!/bin/bash

cur_dir=$(pwd) # current direction


add_to_path=${cur_dir}/tools/arm-bcm2708/arm-linux-gnueabihf/bin

# change file to find g++ and gcc compilers
PATH=${PATH}:${add_to_path}

cd PatternsCollection # think that this direction in current direction




cmake CMakeLists.txt -DSYSROOT=${cur_dir}/tools/arm-bcm2708/arm-linux-gnueabihf/arm-linux-gnueabihf/sysroot -DON_PI=ON
make clean
make install all DESTDIR=${cur_dir}/Ready_project # do application in directorie of Ready_project

cd .. # return to the first directories

tar -cf Ready_project.tar Ready_project # clear

echo 'done'

