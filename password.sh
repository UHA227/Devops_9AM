#!/bin/bash

read -p "Enter the username:" username

read -sp "Enter password:" password

echo $username | grep [a-z] | grep [A-Z] > /dev/null

echo $password | grep [a-z] | grep [A-Z] | grep [0-9] | grep ["!@#$%^&*"]

if [ $? == 0 ]
then
	echo "Password is valid"
else
	echo "Password is invalid"
fi
