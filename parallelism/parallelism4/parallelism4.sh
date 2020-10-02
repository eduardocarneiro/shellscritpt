#!/bin/bash


function get_infos()
{
	A=$1

	for b in a b c 
	do
	#	echo "$A - resource $b" 	
		touch $A-$b.txt 
#		sleep 2
	done
}



# main program
for project in $(seq 10)
do
	echo project-$project
	get_infos $project &
	#echo $!
	#ps -p $!

done

wait

