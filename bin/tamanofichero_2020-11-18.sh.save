#!/bin/bash

#Script:  tamanofichero_2020-11-18.sh
#Título: tamanofichero
# Descripcion: Muestra  el tamano de un fichero en megabytes
#Fecha: 2020-11-18
#Autor: juanjo

if [[ "$#" -ne 1 ]]; then
	echo "Error, la ejecución del programa es "$0" [archivo/directorio]. No admite varios ficheros/directorios."
	echo "Se cierra el programa."
	exit
fi

if [[ -d $1 ]]; then
	TAMANO=$(stat -c %s $1)
	let TAMANO=(TAMANO/1024)
	echo "El tamaño del directorio: $1 es de $TAMANO MB."
	echo ""
elif [[ -f "$1" ]]; then
	TAMANO=$(du -bsh $1 | cut -f1)
	let TAMANO=(TAMANO/1024)
	echo "El tamano del fichero: $1 es de $TAMANO MB."
	echo ""
else
	echo "No existe el fichero o directorio $1."
	echo ""
	ls -l
	echo "Se cierra el programa."
	echo ""
fi
