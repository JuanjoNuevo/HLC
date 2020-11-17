#!/bin/bash

#Script:  aprobado_2020-11-17.sh
#Título: aprobado
# Descripcion: Muestra si estas aprobado o no
#Fecha: 2020-11-17
#Autor: juanjo

if [[ "$#" -lt 1 ]]; then
	echo "Error, la ejecución del programa es "$0" [nota]"
	echo "Se cierra el programa."
	exit
fi

case $1 in
    0|1|2|3|4)
        echo "Estas suspenso. Tu nota es "$1". Suspenso"
	echo ""
	;;
    5)
        echo "Estas aprobado. Tu nota es "$1". Suficiente"
	echo ""
	;;
    6)
        echo "Estas aprobado. Tu nota es "$1". Bien"
	echo ""
	;;
    7|8)
	echo "Estas aprobado. Tu nota es "$1". Notable"
	echo ""
	;;
    9|10)
	echo "Estas aprobado. Tu nota es "$1". Sobresaliente"
	echo ""
	;;
    *) 
	echo "Error, la nota va desde 0 a 10. No se admiten decimales.";;
esac
