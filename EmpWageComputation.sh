#! /bin/bash -x 

is_Present=1
randomCheck=$((RANDOM%2))

if [ $randomCheck -eq $is_Present ]
then

        echo "Employee Is Present"

else

        echo "Employee Is Absent"

fi
