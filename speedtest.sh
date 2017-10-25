#!/bin/sh
#./speedtest.sh http://somewhere.with/a/100MB.file

COUNTER=0
SPEED_AVG=0

while [  $COUNTER -lt 3 ]; 
do
	EPOCH=$(date +"%s")

	wget $1 -q --show-progress -O - > /dev/null

	SPEED=$(expr 8 \* 100 / $(($(date +"%s")-${EPOCH})))

	SPEED_AVG=$((SPEED+SPEED_AVG))
	AVG=$((SPEED_AVG/3))

	echo "${SPEED} Mb/s, ${COUNTER}, ${AVG} avg"
	echo "${COUNTER},${SPEED}" >> $2-abs.csv
	

	let COUNTER=COUNTER+1 
	sleep 1s 

done

printf "0, ${AVG}\n 1, ${AVG}\n 2, ${AVG}\n" > $2-avg.csv
