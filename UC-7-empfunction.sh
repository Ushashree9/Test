#!/bin/bash -x

isparttime=1;
isfulltime=2;
maxhrsinmonth=100;
emprateperhr=20;
numofworkingdays=20;

totalworkhours=0;
totalworkingdays=0;

function getworkinghours() {
	case $1 in
		$isfulltime)
			workhours=8;
			;;
		$isparttime)
			workhours=4;
			;;
		*)
			workhours=0
			;;
	esac
}
while [[ $totalworkhours -lt $maxhrsinmonth && $totalworkingdays -lt $numofworkingdays ]]
do
	(( totalworkingdays++))
	getworkinghours $((RANDOM%3))
	totalworkinghours=$((totalworkhours + workhours));
done

totalsalary=$(($totalworkinghours*$emprateperhr));
