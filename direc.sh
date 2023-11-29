#!/bin/bash
echo "enter the directory"
read dir
if [ -d $dir ]
then
echo "already this directory exists "
else
mkdir $dir
echo "directory created"
fi
