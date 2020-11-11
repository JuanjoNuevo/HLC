#!/bin/bash

#Script:  calculaedad_2020-11-11.sh
#Título: calculaedad
# Descripcion: Muestra Hello world
#Fecha: 2020-11-11
#Autor: juanjo

DIA=`date +%d`
MES=`date +%m`
ANNO=`date +%Y`
DIAP=0
MESP=0
ANNOP=0
DIAF=0
MESF=0
ANNOF=0

clear
while [[ "$DIAP" -eq 0 || "$DIAP" -gt 31 || "$DIAP" -lt 1 ]]
do
	echo "Introduce tu dia de nacimiento:"
	read DIAP
	if [[ "$DIAP" -gt 31 || "$DIAP" -lt 1 ]]; then
		echo "Los dias del mes puedes ser desde el dia 1 al 31. Por favor introduce el dia de nuevo."
		echo "Pulsa enter"
		read
		clear
	fi
	clear
done

while [[ "$MESP" -eq 0 || "$MESP" -gt 12 || "$MESP" -lt 0 ]]
do
	echo "Introduce tu mes de nacimiento:"
	read MESP
	if [[ "$MESP" -gt 12 || "$MESP" -lt 1 ]]; then
		echo "Los meses del año van del 1 al 12. Por favor introduce de nuevo el mes: "
		echo "Pulsa enter."
		read
		clear
	fi
	clear
done

while [[ "$ANNOP" -eq 0 || "$ANNOP" -gt 2020 || "$ANNOP" -lt 1898 ]]
do
	echo "Introduce tu año de nacimiento:"
	read ANNOP
	if [[ "$ANNOP" -gt 2020 ]]; then
		echo "El year actual es 2020, no puedes haber nacido despues de 2020."
		echo "Pulsa enter."
		read
		clear
	fi
	if [[ "$ANNOP" -lt 1989 ]]; then
		echo "La persona mas longeva del mundo nacio en 1989. No puedes haber nacido hace mas de 122 años."
		echo "Pulsa enter."
		read
		clear
	fi
	clear
done

if [[ "$DIA" -ge "$DIAP" ]]; then
	let DIAF=$DIA-$DIAP
else
	let DIAF=$DIAP-$DIA
fi


if [[ "$MES" -ge "$MESP" ]]; then
	let MESF=$MES-$MESP
else
	let MESF=$MESP-$MES
fi


if [[ "$ANNO" -ge "$ANNOP" ]]; then
	let ANNOF=$ANNO-$ANNOP
else
	let ANNOF=$ANNOP-$ANNO
fi

echo "La fecha introducida es: "$DIAP"/"$MESP"/"$ANNOP"."
echo ""
echo "Llevas viviendo "$DIAF" dias, "$MESF" meses, "$ANNOF" años."
echo "Todavía no estoy diseñado para saber cuantos dias te quedan."
echo "Un saludo y suerte. :)"
echo ""
echo "Pulsa enter."
read



