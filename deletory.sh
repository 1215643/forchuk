#bin/bash
#!/bin/bash
echo " enter host or ip"
read hip
echo 
grep -q $hip /home/ec2-user/bhargav/database
if [ $? -eq 0 ]
then
echo
 sed -i '/'$hip'/d' /home/ec2-user/bhargav/database
 echo "$hip is removed from database"
else
	 echo " no host & ip are availabe"
fi

