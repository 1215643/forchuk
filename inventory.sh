#!/bin/bash
echo "provide host name"
read host
grep -q $host /home/ec2-user/bhargav/database
if [ $? -eq 0 ]
then 
	echo "this host name already exists"
	echo
	exit 0
fi
echo "provide ip address"
read ip
grep -q $ip /home/ec2-user/bhargav/database
if [ $? -eq 0 ]
then
	echo "its alrteady exists"
	exit 0
fi
echo "provide description"
read d
echo 
echo "$host $ip $d" >> /home/ec2-user/bhargav/database
echo "records are added into the database"
