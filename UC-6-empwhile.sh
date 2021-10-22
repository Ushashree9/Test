#!/bin/bash -x

isparttime=1;
isfulltime=2;
max_rate_in_month=100;
emprateperhr=20;
numofworkingdays=20;
totalemphr=0;
totalworkingdays=0

while [[ $totalemphr -lt $max_rate_in_month && $totalworkingdays -lt $numofworkingdays ]]
do
	((totalworkingdays++))
        randomcheck=$((RANDOM%3));
                case $randomcheck in
                        $isfulltime)
                                emphrs=8;
                                ;;
                        $isparttime)
                                emphrs=4;
                                ;;
                        *)
                        emphrs=0;
                                ;;
                        esac

                totalemphr=$(($totalemphr+$emphrs))
                totalsalary=$(($totalemphr*$emprateperhr));
done

