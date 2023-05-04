#!/bin/bash
#Exemple de bucle for

#Sin $() 
for i in 3 perro 34 patio 88 queso
do
	echo $i
done

echo "------------------------"

#Sin $() 
for i in ls
do
	echo $i
done

echo "------------------------"

# Con $()
for i in $(ls)
do
	echo $i
done

echo "------------------------"

#Suma la variable y muestra el resultado en cada vuelta
for i in $(seq 1 10); do
	echo $i
done