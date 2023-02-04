#!bin/bash
WAGE_PER_HOUR=20;
present=$((RANDOM%3))
if [ $present -eq 0 ]
then
	Emp_Hour=0;
elif [ $present -eq 1 ]
then
	Emp_Hour=8;
else 
	Emp_Hour=4;
fi 
Daily_Wage=$(($Emp_Hour*$WAGE_PER_HOUR));
echo "Employee Daily Wage is equal to : $Daily_Wage"