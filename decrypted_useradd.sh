#!/bin/bash
echo "provide user name"
read user
echo
echo
grep -q $user /etc/passwd
if [ $? -eq 0 ]
then
	echo "this user has already exists"
	exit 0
fi
echo "provide description"
read d
echo "do you want to specify the user id (y/n) ?"
read yn
if [ "$yn" == y ]
then
	echo "specify the user id "
	read uid
	useradd $user -c "$d" -u $uid
	echo " $user account ha been created successfully with user id"
elif [ "$yn" == n ]
then
	echo "system defined uid will be created"
	useradd $user -c "$d"
	echo "$user account has been created successfully with system defined user"
fi
