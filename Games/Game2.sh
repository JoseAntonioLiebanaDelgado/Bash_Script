#!/bin/bash

#Numero
numRandom=$((RANDOM%6))

for i in 4 3 2 1 0 
do
#Introducción del número
	echo "Escribe un número"
	read numUsuari
#Condició IF
#Si acierta
	if [ $numUsuari -eq $numRandom ]; then
		echo "Correcto!"
		exit

#Si falla y és más pequeño que el número random 
	elif [ $numUsuari -gt $numRandom ]; then
		echo "$numUsuari es mas grande que el numero secreto"
		echo "Tienes $i oportunidades"

#Si falla y és más grande que el número random
	elif [ $numUsuari -lt $numRandom ]; then
		echo "$numUsuari es mas pequeño que el numero secreto"
		echo "Tienes $i oportunidades"
	fi
done