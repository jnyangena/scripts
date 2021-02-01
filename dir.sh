#!/usr/bin/bash

end=$1 #This variable takes the second argument on the command line as the number of folders to be created by the script

for ((week=1;week<=end;week++)); #initiate a for loop that loops the number of times specified in the second argument
do
	if [ $week -lt 10 ]; then
		mkdir week_0$week #this adds a '0' at the beginning of the week number so as the folders are sorted numerically
	else
		mkdir week_$week
	fi
done
