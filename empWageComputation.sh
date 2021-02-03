#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program!"

wage_per_hour=20;
isPartTime=1;
isFullTime=2;
No_of_working_days=20
Monthly_Wage=0;

for (( day=1; day<=$No_of_working_days; day++ ))
do
	empCheck=$((RANDOM%3));
	case $empCheck in
		$isFullTime)
			emp_hour=8
			;;
		$isPartTime)
			emp_hour=4
			;;
		*)
			emp_hour=0;
			;;
	esac

	Salary=$(( $emp_hour * $wage_per_hour ));
	Monthly_Wage=$(( $Monthly_Wage + $Salary ));
done

echo "Monthly Wage is : " $Monthly_Wage
