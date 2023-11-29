#! /bin/sh
#
echo -n "Enter Filename-> "
read filename
if [ -f "$filename" ]; then
sort $filename | uniq | tee sorted1.txt
else
echo "No $filename in $pwd...try again"
fi
exit 0
