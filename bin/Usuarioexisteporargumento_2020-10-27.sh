#!/bin/bash

#Script:  Usuarioexisteporargumento_2020-10-27.sh
#Título: Usuarioexisteporargumento
# Descripcion: Comprueba si existe el usuario por argumento
#Fecha: 2020-10-27
#Autor: juanjo

if [[ $# -ne 1 ]]; then
	echo "Número incorrecto de argumentos."
	echo "Uso: "$0" nombre_usuario"
	exit 1
fi

if grep -q "^$1:" /etc/passwd
   then
	echo "El usuario "$1" existe."
   else
	echo "El usuario "$1" no existe"
fi
