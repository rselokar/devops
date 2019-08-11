#!/bin/bash

directory=$1
#bash check if directory exists
if [ -d $directory ] && [ ! -z $directory ];
then
    echo "Directory Exsists!"
else
   echo "Directory does not exisys!"
fi
