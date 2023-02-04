#!bin/bash
present=$((RANDOM%2))
if [ $present -eq 0 ]
then
	echo "Employee is absent";
else
	echo "Employee is present"; 
fi 