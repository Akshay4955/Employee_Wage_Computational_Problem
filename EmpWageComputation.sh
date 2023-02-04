#!bin/bash
WAGE_PER_HOUR=20;
IsPresent=1;
IsPartTime=2;
Monthly_Wage=0;
Total_Hour=0;
Day=1;
while [[ $Day -le 20 && $Total_Hour -le 100 ]]
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
Total_Hour=$(($Total_Hour+Emp_Hour));
	if [ $Total_Hour -eq 100 ]
	then 
		Total_Hour=$(($Total_Hour -$Emp_hour));
		break;
	fi
Daily_Wage=$(($Emp_Hour*$WAGE_PER_HOUR));
Monthly_Wage=$(($Monthly_Wage+$Daily_Wage));
((Day++))
done
Echo "Monthly Wage of Employee is equal to $Monthly_Wage";