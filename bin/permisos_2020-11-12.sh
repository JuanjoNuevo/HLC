#!/bin/bash

#Script:  permisos_2020-11-12.sh
#Título: permisos
# Descripcion: Cambia los permisos de los archivos dentro del directorio actual o de las carpetas recursivamente
#Fecha: 2020-11-12
#Autor: juanjo
clear
if [[ "$#" -lt 1 ]]; then
	echo "Error, la ejecución del programa es "$0" [archivos/ficheros]"
	echo "Se cierra el programa."
	exit
fi

for i in "$@"
do
	if [ -f "$i" ]; then
		echo "El archivo "$i" existe. Procedemos a cambiar los permisos."
		echo "Pulse enter."
		read
		chmod +x $i
		ls -l $i
		echo "Permisos cambiados. Pulse enter."
		read
	else
		echo "El archivo "$i" NO EXISTE. Se comprobará si es un directorio."
		echo "Pulse enter."
		read
	fi

	if [ -d "$i" ] && [ ! -f "$i"]; then
		echo ""$i" es un directorio. Se procederá a cambiar recursivamente los permisos de los archivos que contenga."
		echo "Los ficheros incluidos son: "
		ls -l $i
		echo ""
		echo "¿Esta usted seguro (S/N)? "
		read RESPUESTA
		if [ "$RESPUESTA" == "S" ] || [ "$RESPUESTA" == "s" ]
		then
			chmod -R ugo+x $i
			echo ""
			echo "Los ficheros fueron cambiados de permisos: "
			ls -l $i
			echo "Pulse enter."
			read
		else
			echo ""
			echo "Los ficheros no fueron cambiados de permisos."
			echo "Pulse enter."
			read
		fi
	else
		echo "No existe ningun directorio o archivo con el nombre "$i"."
		echo "Pulse enter."
		read
	fi
done
echo "El programa ha terminado."
echo "¡Hasta luego!"

