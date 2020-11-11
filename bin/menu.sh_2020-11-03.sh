#!/bin/bash

#Script:  menu.sh_2020-11-03.sh
#Título: menu.sh
# Descripcion: Muestra un menu
#Fecha: 2020-11-03
#Autor: juanjo

while :
do
	clear
	echo "Selecciona una opcion:"
	echo "1.Realiza una copia de seguridad"
	echo "2.Restaurar copia de seguridad"
	echo "3.Salir"
	echo "Introduce tu opción (1,2,3)"
	read option

	case $option in
		1)
			echo "Se ha realizado una copia de seguridad."
		;;
		2)
			echo "Se ha restaurado una copia de seguridad."
		;;
		3)
			echo "Se sale del programa."
			break;
		;;
		*)
			echo "Opción incorrecta."
		;;
	esac
	echo ""
	read -p "Pulsa enter"
	echo ""
done
