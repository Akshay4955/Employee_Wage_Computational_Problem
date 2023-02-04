#!bin/bash
WAGE_PER_HOUR=20;
IsPresent=1;
IsPartTime=2;
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
echo "Employee Daily Wage is equal to : $Daily_Wage"