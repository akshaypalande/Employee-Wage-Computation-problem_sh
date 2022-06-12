#!/bin/bash

echo "Welcome to Employee Wage Computation Program"

#Check Employee is Present or Absent

wage=$(( RANDOM%2 ))
if (( $wage==1 ))
then
	echo "Employee is Present"
else
	echo "Employee is Absent"
fi

# Calculate Daily Employee Wage


Dailywage=$(( 8*20 ))
echo "Daily wage of a Employee is : "$Dailywage

# calculate part time employee wage

PartTimeWage=$((4*20))

echo "Parttime wage of Employee is : "$PartTimeWage


# do using switch case

PartTime=1
FullTime=2
empRatePerHrs=20;

randomCheck=$(($RANDOM%2));

case $randomCheck in
	$FullTime)
		echo "Employee is Full Time"
		empHrs=8
		;;
	$PartTime)
		echo "Employee is Part Time"
		empHrs=4
		;;
	*)
	empHrs=0
		;;
esac
salary=$(($empHrs*$empRatePerHrs));
echo "Employee salary " $salary;
