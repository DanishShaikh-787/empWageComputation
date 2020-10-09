#! /bin/bash -x 

is_FullTime=1
is_PartTime=2
emp_Rate_Per_Hour=20

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
echo "Your One Day Salary Is : " $salary
