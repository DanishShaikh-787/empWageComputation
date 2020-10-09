#! /bin/bash -x 

is_FullTime=1
is_PartTime=2
emp_Rate_Per_Hour=20
total_Salary=0
num_Of_Working_Days=20

for (( day=1; day<=$num_Of_Working_Days; day++ ))
do
	random_Check=$((RANDOM%3))
	case $random_Check in
        	$is_FullTime ) 
                	emp_Hrs=8
                	;;
        	$is_PartTime )
                	emp_Hrs=4
                	;;
        	* )
                	emp_Hrs=0
                	;;
	esac
	salary=$(($emp_Rate_Per_Hour*$emp_Hrs))
	total_Salary=$(($total_Salary+$salary))
done
echo "Your Total Salary : " $total_Salary
