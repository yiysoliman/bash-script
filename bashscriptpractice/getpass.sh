#!/bin/bash


file=$@

while read line;
do
	for i in $(echo "$line" | sed "s/,/ /g")
	do 
		if [[ ${#i} -ge 6 && "$i" == *[A-Z]* && "$i" == *[a-z]* && "$i" == *[0-9]* && "$i" == *[#@$]* ]]
		then
			echo "$i"
		else 
			echo "false"
		fi
	done

done < "$file" 
