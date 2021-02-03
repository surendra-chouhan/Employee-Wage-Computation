#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program!"

empCheck=$((RANDOM%3));
wage_per_hour=20;
isPartTime=1;
isFullTime=2;

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

echo "Employee Wage is : " $(($emp_hour*$wage_per_hour));
