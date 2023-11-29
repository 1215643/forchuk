#!/bin/bash
echo "select one"
echo
echo 'a=add'
echo 'd=del'
echo

read choice
case $choice in

a) /home/ec2-user/bhargav/inventory.sh ;;
d) /home/ec2-user/bhargav/deletory.sh ;;
*) echo "invalid option"
	                        esac
	
