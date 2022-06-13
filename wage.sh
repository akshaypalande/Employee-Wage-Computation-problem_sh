#!/bin/bash
echo " Welcome to Employee Wage Problem "
HalfTimeHours=4
WagePerHour=20
FullTimeHours=8
WorkingDays=20
MonthlyWage=0
hours=0
days=1
WorkHours() {
	local RandomCheck=$1
	case $RandomCheck in 
		"0") echo 0 ;;
		"1") echo $HalfTimeHours ;;
		"2") echo $FullTimeHours ;;
	esac
}
while [[ $days -le 20 && $hours -le 100 ]]
do
	RandomCheck=`echo $((RANDOM%3))`
	DayHours="$( WorkHours $RandomCheck )"
	DailyWage=$(( $DayHours * $WagePerHour ))
	hours=$(( $hours + $DayHours ))
	MonthlyWage=$(( $MonthlyWage + $DailyWage ))
	echo -e "Day:$days       DailyWage:$DailyWage       TotalWage:$MonthlyWage"
	days=$(( $days + 1 ))
done
