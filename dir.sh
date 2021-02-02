#!/usr/bin/bash


echo "How many folders do you want?"
#end=$1 #This variable takes the second argument on the command line as the number of folders to be created by the script

read number

echo "What is the prefix you want for your folder names?"
read prefix

for ((folder=1;folder<=number;folder++)); #initiate a for loop that loops the number of times specified in the second argument
do
	if [ $folder -lt 10 ]; then
		mkdir "$prefix"_0"$folder" #this adds a '0' at the beginning of the folder number so as the folders are sorted numerically
	else
		mkdir "$prefix"_$folder
	fi
done
