#!/bin/bash

echo "Welcome to Employee Wage Computation Program"

#Check Employee is Present or Absent

A=$(( RANDOM % 2 ))
if (( $A == 1 ))
then
	echo "Employee is Present"
else
	echo "Employee is Absent"
fi

