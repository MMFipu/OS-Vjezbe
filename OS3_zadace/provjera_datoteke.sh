#!/bin/bash
if [ $# = 1 ]; then
	ABS_FILE_PATH=$1
	if [[ -e "$ABS_FILE_PATH" && -f "$ABS_FILE_PATH" ]]; then
		echo "Datoteka na putanji $ABS_FILE_PATH postoji, ovo je njezin sadržaj:\n"
		cat "$ABS_FILE_PATH"
	else
		echo "Datoteka na putanji $ABS_FILE_PATH ne postoji ili nije regularna datoteka"
	fi
else
	echo "Potrebno je proslijediti točno jedan argument."
fi
