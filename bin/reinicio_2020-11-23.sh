#!/bin/bash

#Script:  reinicio_2020-11-23.sh
#Título: reinicio
# Descripcion: Reinicia el ordenador si se ha ejecutado como root
#Fecha: 2020-11-23
#Autor: juanjo

if [ "$(whoami)" = 'root' ]; then
	echo "El equipo se reiniciará en un minuto."
	echo ""
	shutdown -r +1
else
	echo "El script no se ejecutará por que usted no es usuario root."
	echo "Se cierra el programa."
	echo ""
fi
