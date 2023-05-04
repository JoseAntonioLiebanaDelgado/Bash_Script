#!/bin/bash
#Tablas de multiplicar

for i in $(seq 1 10); do
	echo "tabla del $i" > tabla$i.txt
	for j in $(seq 1 10); do
		echo "$i x $j = $(($i*$j))" >> tabla$i.txt
	done
	cat tabla$i.txt
done