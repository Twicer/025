#!/bin/bash


#if you input http adress, the script will pull it from the server and sort in ascending order

#or you can only pass a file as agrument and it also work


if [[ $1 =~ ^https?:// ]]; then
        curl -s $1 | sed 's/-/./' | sort -t '.' -nk2 -nk3 -nk4 | sed 's/\./-/'
else
        sed 's/-/./' $1 |   sort -t '.' -nk2 -nk3 -nk4 | sed 's/\./-/' # i found also this solution " sort -V YOUR_TEXT_FILE "
fi



