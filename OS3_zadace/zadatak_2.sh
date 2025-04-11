#!/bin/bash
if [[ $1 -ge 1 && $1 -le 10 ]]; then
	lst=()
	for (( i=1; i<=$1; i++ )); do
		lst+=$i
	done
	echo ${lst[@]}>"brojevi.txt"
else
	echo "Unesena vrijednost nije u rasponu od 1 do 10!"
fi
