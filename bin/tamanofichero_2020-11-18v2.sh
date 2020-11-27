#!/bin/bash

#Script:  tamanofichero_2020-11-18.sh
#Título: tamanofichero
# Descripcion: Muestra  el tamano de un fichero en megabytes
#Fecha: 2020-11-18
#Autor: juanjo

if [[ "$#" -lt 1 ]]; then
	echo "Error, la ejecución del programa es "$0" [archivos/directorio archivo2/directorio2 ...]. No admite ningun fichero."
	echo "Se cierra el programa."
	exit
fi

TAMANOTOTAL=0
for i in  "$@"
do
	if [[ -d $i ]]; then
		TAMANO=$(stat -c %s $i)
		let TAMANOTOTAL=TAMANOTOTAL+TAMANO
		let TAMANO=(TAMANO/1024)
		echo "El tamaño del directorio: $i es de $TAMANO MB."
		echo ""
	elif [[ -f "$i" ]]; then
		TAMANO=$(du -bsh $i | cut -f1)
		let TAMANOTOTAL=TAMANOTOTAL+TAMANO
		let TAMANO=(TAMANO/1024)
		echo "El tamano del fichero: $i es de $TAMANO MB."
		echo ""
	else
		echo "No existe el fichero o directorio $i."
		echo ""
		ls -l
	fi
done

let TAMANOTOTAL=(TAMANOTOTAL/1024)
echo "El tamano total de los archivos/directorios es: "$TAMANOTOTAL"."
echo ""
