#!/usr/bin/env bash
# File: guessinggame.sh

cnt=$(ls -l | wc -l ) 

echo "Please enter how many files are in the current directory:" 
echo ""
read cntfiles

function guessing { 
	echo "Please enter your gues:" 
	echo ""
	read cntfiles
}
while [[ $cntfiles -ne $cnt ]] 
do
if [[ $cntfiles -gt $cnt ]] 
then 
	echo ""
	echo "Number is too high, Please try again."
	echo ""
	guessing
elif [[ $cntfiles -lt $cnt ]]
then
	echo ""
	echo "Number is too low, Please try again."
	echo ""
	guessing
fi
done
	echo "Congratulations! $cntfiles is the correct answer."
