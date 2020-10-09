#! /bin/bash -x 

#CONSTANT FOR THE PROGRAM
IS_FULL_TIME=1
IS_PART_TIME=2
EMP_RATE_PER_HOUR=20
NUM_OF_WORKING_DAYS=20
MAX_HOURS_IN_MONTH=40

#VARIABLES
totalEmpHr=0
totalWorkingDays=0


function getWorkingHours(){
	case $1 in
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
	echo $empHrs
}

function getEmpWage(){
	oneDayHr=$1
	echo $(($oneDayHr*$EMP_RATE_PER_HOUR))

}

while [[ $totalEmpHr -lt $MAX_HOURS_IN_MONTH && $totalWorkingDays -lt $NUM_OF_WORKING_DAYS ]]

do
	((totalWorkingDays++))
	empHours=$( getWorkingHours $((RANDOM%3)) )
	totalEmpHr=$(($totalEmpHr+$empHours))
	dailyWages[$totalWorkingDays]=$( getEmpWage $empHours )
done
totalSalary=$(($EMP_RATE_PER_HOUR*$totalEmpHr))

echo "Total Salary Is " $totalSalary

echo "Daily Wages : " ${dailyWages[@]}
