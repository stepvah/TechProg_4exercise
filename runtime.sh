#!/bin/bash

git clone https://github.com/akhtyamovpavel/PatternsCollection.git

 
cd PatternsCollection
cp  config.ini Decorator/cpp-source/configs

cmake CMakeLists.txt
make clean
make

cd ..

cd bin

./Decorator
