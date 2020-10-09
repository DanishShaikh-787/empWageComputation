#! /bin/bash -x 

isPresent=1
randomCheck=$((RANDOM%2))

if [ $randomCheck -eq $isPresent ]
then
        empRatePerHour=20
        empHrs=8
        salary=$(($empRatePerHour*$empHrs))
else
        salary=0
fi

echo "Your One Day Salary Is : " $salary
