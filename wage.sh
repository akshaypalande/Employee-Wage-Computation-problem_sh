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

# calculate part employee wage

PartTimeWage=$((4*20))

echo "Parttime wage of Employee is : "$PartTimeWage
