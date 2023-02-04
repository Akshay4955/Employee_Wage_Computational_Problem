#!bin/bash
WAGE_PER_HOUR=20;
Monthly_Wage=0;
Total_Hour=0;
Day=1;
function To_Get_Emp_Hour(){
case $1 in
	1)
		Emp_Hour=8;
	;;
	2)
		Emp_Hour=4;
	;;
	0)
		Emp_Hour=0;
	;;
esac
echo $Emp_Hour;
}
while [[ $Day -le 20 && $Total_Hour -le 100 ]]
do
Emp_Hour=$(To_Get_Emp_Hour $((RANDOM%3)));
Total_Hour=$(($Total_Hour+$Emp_Hour));
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