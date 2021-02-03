#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program!"

isPresent=1;
randomCheck=$((RANDOM%2));
full_day_hour=8;
wage_per_hour=20;

if [[ $isPresent -eq $randomCheck ]]
then
        echo "Employee is Present";
	empWage=$(($wage_per_hour*$full_day_hour));
        echo "Employee wage is : " $empWage;
else
        echo "Employee is not Present"
        echo "Employee wage is : 0";
fi
