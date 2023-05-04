#!/bin/bash
#Fes un script que ens mostri els 1000 primers nombres primers.
#Per fer aquest script aprofita l'anterior, i dissenya una funcio que ens digui#si un nombre és o no primer.

esPrimer(){
    if [ $1 -eq 2 ]; then
        return 1
    elif [ $(($1 % 2)) -eq 0 ]; then
        return 0
    fi
    
    for ((i=3; i<$1; i+=2))
    do
        if [ $(($1 % $i)) -eq 0 ]; then
            return 0
        fi
    done
    
    return 1
}

numero=1
recompte=0

while [ $recompte -lt 1000 ]
do
    numero=$(($numero+1))
    esPrimer $numero
    if [ $? -eq 1 ]; then
        recompte=$(($recompte+1))
        echo -n "$numero, "
    fi
done

