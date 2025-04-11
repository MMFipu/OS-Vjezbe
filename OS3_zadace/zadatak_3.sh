#!/bin/bash
if [ -e ./screenshots ]; then
	n=1
	for item in ./screenshots/*; do
		mv "$item" "./screenshots/screenshot_"$n"_$(basename $item)"
		(( n++ ))
	done
	ls ./screenshots/
fi
