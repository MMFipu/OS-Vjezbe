#!/bin/bash
if [ $# = 2 ]; then
	c=0
	for element in "$1"/*; do
		if [[ $element == *$2 ]]; then
			echo "$(basename "$element")"
			(( c++ ))
		fi
	done
	if (( c == 0 )); then
		echo "Direktorij ne sadrži datoteke s ekstenzijom $2"
	fi
else
	echo "Potrebno je proslijediti točno dva argumenta!"
fi
