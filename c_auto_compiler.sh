#!/bin/sh

#-- this script it has be conveived to use with gcc compiler in a linux environment
#-- This software is open-source and offered with no guarantees of any type

exit_script(){
	if [ $? -ne 0 ];then
		echo compilation finished with FAILURE
		exit 1
	fi
}

gcc -c -Wall -Wshadow -g $1
exit_script

name_file=$(echo $1 | awk -F "." '{print$1}')

gcc -o $name_file $name_file.o
exit_script
echo compilation finished with SUCCESS
