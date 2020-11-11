#!/bin/bash

#Script:  tablademultiplicar_2020-11-03.sh
#Título: tablademultiplicar
# Descripcion: Muestra la tabla de multiplicar
#Fecha: 2020-11-03
#Autor: juanjo

echo "Introduce un número para enseñar la tabla de multiplicar:"
read numero

echo "La tabla de multiplicar del numero "$numero" es: "
for(( variable=1; variable<11; variable++ ))
do
	let resultado=$variable*$numero
	echo $numero"x"$variable"="$resultado
done
