#!/bin/bash
echo "enter file name"
read filename
if [ -f $filename ]
then
	sort $filename | uniq | tee sorted1
else
	echo "no files found"
fi
exit 0
