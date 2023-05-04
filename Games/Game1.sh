#!/bin/bash
#Juego de adivinar un numero

#Variable Random
numRandom=$RANDOM

#Control de errores
esCorrecto=0

#Condición WHILE
while [ $esCorrecto -eq 0 ]; do

#Introducción del número por parte del usuario
	echo "Escribe un número aleatorio"
	read num

#Condición IF
	if [ $numRandom -eq $num ]; then
		echo "Correcto!"
		esCorrecto=1
	elif [ $num -gt $numRandom ]; then
		echo "$num es mayor que el numero secreto"
		esCorrecto=0
	elif [ $num -lt $numRandom ]; then
		echo "$num es menor que el numero secreto"
		esCorrecto=0
	fi
done
