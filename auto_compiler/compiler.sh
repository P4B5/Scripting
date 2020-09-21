#!/bin/sh

# THIS SCRIPT IS TO AUTO COMPILE ALL THE FILES IN A FOLDER AUTOMATICALLY USING GCC compiler 
# necessary to have installed GCC compiler to run this code!!


echo headers: *.h
echo programmes: *.cpp
echo compiling...
echo " "

if [ -e ^*.h ]; then
    g++ -Wall -g -o main *.cpp *.h
else
    g++ -Wall -g -o main *.cpp
fi

