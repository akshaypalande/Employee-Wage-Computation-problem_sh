!/bin/bash -x

printf "Welcome To Employee Wage Computation Problem \n"

#CONSTANTS
WORK=2
WAGE_PER_HOUR=20
FULL_DAY_HOUR=8
HALF_DAY_HOUR=4
IS_PRESENT=1
IS_FULL_DAY=0
IS_HALF_DAY=1
MONTH=20
TOTAL_HOURS=100

#VARIABLES
randomNumber=0
randomNumber=$(( RANDOM % $WORK ))
randomNumber2=$(( RANDOM % $WORK ))
wage=0
attendance=0
totalWage=0
totalWorkingHours=0
days=0
employeeHours=0
hours=0

#GET HOURS 8 or 4
function getHours(){
	 case $1 in
		$IS_FULL_DAY)
			echo $FULL_DAY_HOUR
		;;
		$IS_HALF_DAY)
			echo $HALF_DAY_HOUR
		;;
		*)
			echo 0
		;;
	esac
}

#WHILE DAY IS LESS THAN 20 AND HOURS IS LESS THAN 100 TILL CHECK
while [ $days -lt $MONTH -a $totalWorkingHours -lt $TOTAL_HOURS ]
do
	days=$(( $days + 1 ))
	case $randomNumber in
		$IS_PRESENT)
			attendance="Present"
			hours="$( getHours $(( $randomNumber2 )) )"
			wage=$(( $WAGE_PER_HOUR * $hours ))
			employeeHours=$hours
		;;
		0)
			attendance="Absent"
			employeeHours=0
		;;
	esac
   	totalWage=$(( $totalWage + $wage ))
		totalWorkingHours=$(( $totalWorkingHours + $employeeHours ))
done
	printf " Employee monthly wage is : $totalWage \n"	
