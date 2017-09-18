#!/bin/bash
for i in {0..255}; do
	if [ $(($i % 8)) -eq 0 ]
	then
		printf "\n"
	fi
	printf "\x1b[38;5;${i}mcolour${i}\x1b[0m "
	if [ $i -lt 10 ]
	then
		printf "  "
	fi
	if [ $i -gt 9 ] && [ $i -lt 100 ]
	then
		printf " "
	fi
done
