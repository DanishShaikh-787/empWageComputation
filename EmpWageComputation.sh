#! /bin/bash -x 

is_Present=1
is_PartTime=2
emp_Rate_Per_Hour=20
random_Check=$((RANDOM%3))

if [ $random_Check -eq $is_Present ]
then
        emp_Hrs=8
elif [ $random_Check -eq $is_PartTime ]
then
        emp_Hrs=4
else
        emp_Hrs=0
fi
salary=$(($emp_Rate_Per_Hour*$emp_Hrs))
echo "Your One Day Salary Is : " $salary
