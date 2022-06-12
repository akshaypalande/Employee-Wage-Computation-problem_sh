#!/bin/bash 

echo " Welcome To Employee Wage Computation Problem "

PartTime=1
FullTime=2
totalwage=0;
empRatePerHrs=20;
NumberOfWorkingDays=20;

for(( Day=1; Day<=$NumberOfWorkingDays; Day++ ))
do
	randomCheck=$(($RANDOM%2));
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

wage=$(($empHrs*$empRatePerHrs));
totalwage=$(($totalwage+$wage))

done
echo "Employee Wage " $totalwage;
