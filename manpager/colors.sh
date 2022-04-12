#!/bin/bash

BLANK="\e[0m"
echo "this can break your terminal output"
sleep 5
for color in {1..250}; do
	echo -ne "\e[0;${color}m color $color $BLANK"
done

# ex: ts=4
