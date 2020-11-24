#!/bin/bash

#Script:  comprobartipo_2020-11-24.sh
#Título: comprobartipo
# Descripcion: Comprueba el tipo de parámetro
#Fecha: 2020-11-24
#Autor: juanjo

if [[ "$#" -lt 1 ]]; then
        echo "Error, la ejecución del programa es "$0" [parametros]"
        echo "Se cierra el programa."
        exit
fi

for i in "$@"
do
	if [[ -f $i ]]; then
		echo "El argumento $i es un fichero."
		echo ""
	fi
	if [[ -d $i ]]; then
		echo "El argumento $i es un directorio."
		echo ""
	fi
	if [[ ! -e $i ]]; then
		echo "El argumento $i no es ni fichero, ni un directorio, ni existe."
		echo ""
	fi
done

echo "Se cierra el programa."
echo ""
