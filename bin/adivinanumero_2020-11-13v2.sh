#!/bin/bash

#Script:  adivinanumero_2020-11-13.sh
#Título: adivinanumero
# Descripcion: Muestra Hello world
#Fecha: 2020-11-13
#Autor: juanjo

if [[ "$#" -lt 1 ]]; then
	echo "Error, la ejecución del programa es "$0" [numero_maximo]"
	echo "Se cierra el programa."
	exit
fi

ALEATORIO=$(($RANDOM%$1+1))
clear
INTENTOS=0
BANDERA=1
participante=0
JUGADOR=0
echo "El número aleatorio se ha generado. Juguemos: "
echo ""
RESPUESTA=-1
while [ "$RESPUESTA" -ne "$ALEATORIO" ] ; do
	let JUGADOR=($INTENTOS%2);
	if [ "$JUGADOR" != 0 ]
	then
		echo "Le toca al jugador 2"
		participante=2
	else
		echo "Le toca al jugador 1" 
		participante=1
	fi 
	echo "Introduce un número del 1 al "$1": "
	read RESPUESTA
	let INTENTOS=$INTENTOS+1
	while [ "$BANDERA" -eq "1" ]
	do
		if [ [["$RESPUESTA" -lt "1"] || ["$RESPUESTA" -gt "$1"]] ]
		then
			BANDERA=1
		else
			BANDERA=0
		fi
		if [ "$BANDERA" -eq "1" ]
		then
			let INTENTOS=$INTENTOS+1
			echo "El numero introducido no esta entre el rango 1 y "$1" merluzo. Esto te cuesta un intento"
			echo "Introduce un número del 1 al "$1": "
			read RESPUESTA
		fi
	done
done

if [ "$RESPUESTA" -eq "$ALEATORIO" ]
then
	echo "Has acertado!!!"
	echo ""
	echo "El ganador es el jugador numero "$participante"."
	echo ""
	echo "Habéis gastado "$INTENTOS" intentos."
fi
