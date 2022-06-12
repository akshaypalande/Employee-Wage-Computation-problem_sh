#!/bin/bash 

echo " Welcome To Employee Wage Computation Problem "

PartTime=1
FullTime=2
totalHrs=0;
TotalWorkingDays=0;
HrsInMonth=100;
empRatePerHrs=20;
NumberOfWorkingDays=20;

while [[ $totalHrs -lt $HrsInMonth && $TotalWorkingDays -lt $NumberOfWorkingDays ]]
do
	((TotalWorkingDays++))
	randomCheck=$(($RANDOM%3));
		case $randomCheck in
			$FullTime)
				empHrs=8
				;;
			$PartTime)
				empHrs=4
				;;
			*)
				empHrs=0
				;;
		esac
		totalHrs=$(($totalHrs+$empHrs));
done
totalwage=$(($totalHrs*$empRatePerHrs));
echo "Employee Work Hour "$totalHrs
echo "Employee Salary "$totalwage

