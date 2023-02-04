#!bin/bash
WAGE_PER_HOUR=20;
IsPresent=1;
IsPartTime=2;
Monthly_Wage=0;
for ((Day=1; Day<=20;Day++))
do
present=$((RANDOM%3))
case $present in
	$IsPresent)
		Emp_Hour=8;
	;;
	$IsPartTime)
		Emp_Hour=4;
	;;
	*)
		Emp_Hour=0;
	;;
esac
Daily_Wage=$(($Emp_Hour*$WAGE_PER_HOUR));
Monthly_Wage=$(($Monthly_Wage+$Daily_Wage));
done
Echo "Monthly Wage of Employee is equal to $Monthly_Wage";