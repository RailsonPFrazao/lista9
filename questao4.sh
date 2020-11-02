#!/bin/bash

linhas=$(wc -l ips.txt | cut -f1 -d ' ')

for i in $(seq 1 $linhas); do
	for j in $(seq 1 $linhas); do
		[ $i != $j ] && [ $(sed -n "$i"p ips.txt) == $(sed -n "$j"p ips.txt) ] 2> erros.txt && $(sed -i "$i"d ips.txt)
	done
	
done
cat ips.txt
[ -f erros.txt ] && rm erros.txt
