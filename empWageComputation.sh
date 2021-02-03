#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program!"

randomCheck=$((RANDOM%3));
wage_per_hour=20;
isPartTime=1;
isFullTime=2;

if [[ $isFullTime -eq $randomCheck ]]
then
        echo "Employee is FullTime";
	emp_hour=8;
elif [[ $isPartTime -eq $randomCheck ]]
then
	echo "Employee is PartTime";
	emp_hour=4
else
        echo "Employee is Absent";
	emp_hour=0;
fi
echo "Employee Wage is : " $(($emp_hour*$wage_per_hour));
