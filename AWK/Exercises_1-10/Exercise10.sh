#!/bin/bash
# Executa tres pings a diferents ips, en background i redirigint la seva
# sortida a /dev/null. Fes un script que ens mostri una llista amb el PID
# associat a cada ping ("numero" "PID" "pàgina a la que fa ping"),
# i posteriorment et pregunti de quin número de la llista vols aturar el ping.

# - Per fer el "ping" amb la sortida redirigida i en background,
# utilitzem la comanda: ping ip > /dev/null &
# - Per aturar un procès a través del seu PID (ex: PID = 4432),
# utilitzem la comanda: kill -9 4432

# Guarda dins de llistaPID els processos que tenen a la columna 8
# la paraula ping i després guarda el valor de la columna 2

llistaPID=$(pgrep ping)

numero=1
echo "Pings actius a la maquina" > ping.txt

for pid in $llistaPID; do
	parametresAWK=$(ps -o pid,args -p $pid | awk 'NR==2 {print $1, $2}')
	echo "$numero $parametresAWK" >> ping.txt
	numero=$((numero+1))
done

cat ping.txt

echo -n "Quin ping vols matar?: "
read valor

pid=$(awk '$1=="'"$valor"'" {print $2}' ping.txt)
kill "$pid"
