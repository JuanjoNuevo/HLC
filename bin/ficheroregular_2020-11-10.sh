#!/bin/bash

#Script:  ficheroregular_2020-11-10.sh
#Título: ficheroregular
# Descripcion: Muestra Hello world
#Fecha: 2020-11-10
#Autor: juanjo
#!/bin/bash

#Title: copiararchivos
#Description:
#Author: administrador
#DATE: 10_11_2020

ORIGEN=$1
DESTINO=$2

if [ "$#" -lt 2 ]

then
	printf "No ha usado la sintaxis completa: copiararchivos.sh fichero1 fichero2"
	if [ -z "$ORIGEN" ]

	then

	printf "Introduce el fichero origen: "
	read ORIGEN
	fi

	if [ -z "$DESTINO" ]

	then
	printf "Introduce el fichero destino: "
	read DESTINO
	fi
fi

if [ ! -f "$ORIGEN" ]

then

	printf "\nEl fichero origen \"$ORIGEN\" no existe.\n\n"

elif [ -f "$DESTINO" ]

then
	PREG=0

	while [ "0" -eq ${PREG} ]; do

	PREG=1

	printf "¿Desea sobreescribirlo (S/N)?"

	read RESP

	case ${RESP} in
		S | s)
			printf "Realizando la copia: cp %s %s\n" $ORIGEN $DESTINO
			cp "$ORIGEN" "$DESTINO"
		;;
		N | n)
			printf "\"%s\" no copiado" $ORIGEN
			exit 0
		;;
		*)
			printf "\nOpcion incorrecta\n\n"
			printf "Pulse intro para continuar..."
			read REPLY
			PREG=0
		;;
	esac
done

else
	printf "Realizando la copia: cp %s %s\n" $ORIGEN $DESTINO
	cp "$ORIGEN" "$DESTINO"
fi

