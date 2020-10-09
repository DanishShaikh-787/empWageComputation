#! /bin/bash -x 

#CONSTANTS FOR PROGRAM
IS_FULL_TIME=1
IS_PART_TIME=2
EMP_RATE_PER_HOUR=20
NUM_OF_WORKING_DAYS=20
MAX_HOURS_IN_MONTH=40

#VARIABLES
totalEmpHr=0
totalWorkingDays=0


while [[ $totalEmpHr -lt $MAX_HOURS_IN_MONTH && $totalWorkingDays -lt $NUM_OF_WORKING_DAYS ]]

do
	((totalWorkingDays++))

	empCheck=$((RANDOM%3))
	case $empCheck in
		$IS_FULL_TIME ) 
			empHrs=8
			;;
		$IS_PART_TIME )
			empHrs=4
			;;
		* )
			empHrs=0
			;;
	esac

	totalEmpHr=$(($totalEmpHr+$empHrs))

done
totalSalary=$(($EMP_RATE_PER_HOUR*$totalEmpHr))

echo "Total Salary Is " $totalSalary
