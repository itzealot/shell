#!/bin/sh
# kill all java applications
javaps=`jps`
i=0
psid=0
for psresult in $javaps
do
	let cur=i%2
	if [ $cur -eq 0 ]; then
		psid=$psresult
	else
		if (test "$psresult" = "Main" -o "$psresult" = "Jps")
		then
			echo $psresult" not to be killed."
		else
			echo "kill "$psresult
			kill $psid
		fi
	fi
	let i++;
done