#!/bin/bash
#Título: createscript
#Descripcion: crea una plantilla de scripts
#Fecha: 20/10/2020
#Autor: a19giluju
if [ $# -eq 0 ]
then
	echo "Error, la forma de ejecutar el scripts es "$0" [nombre_script_nuevo]"
	echo "El programa se cierra"
	exit 1
fi

BANDERA=1
DATE=$(date +%Y-%m-%d)
SCRIPT_FOLDER="$HOME/HLC/HLC/bin"
SCRIPT_FILE=""$SCRIPT_FOLDER"/"$1"_"$DATE".sh"
if [ -e $SCRIPT_FILE ]
then 
	BANDERA=0
	echo "El fichero "$SCRIPT_FILE" existe."
	echo "¿Qué opción desea hacer?:"
	echo "  1.Sobreescribir archivo."
	echo "  2.Renombrar archivo."
	echo "  3.Cancelar."
	echo ""
	echo "Introduce la opción deseada:"
	read option
	case $option in
		1)
			sudo rm $SCRIPT_FILE
			touch $SCRIPT_FILE
			echo -e "#!/bin/bash\n" > $SCRIPT_FILE
			echo "#Script:  "$1"_"$DATE".sh" >>  $SCRIPT_FILE
			echo "#Título: "$1"" >> $SCRIPT_FILE
			echo "# Descripcion: Muestra Hello world" >> $SCRIPT_FILE
			echo "#Fecha: "$DATE"" >> $SCRIPT_FILE
			echo "#Autor: "$USER"" >> $SCRIPT_FILE
			sudo chmod +x $SCRIPT_FILE
			sudo nano $SCRIPT_FILE 
		;;
		2)
			echo "Introduce el nombre del archivo:"
			read nombre
			SCRIPT_FILE=""$SCRIPT_FOLDER"/"$nombre"_"$DATE".sh"
			touch $SCRIPT_FILE
			echo -e "#!/bin/bash\n" > $SCRIPT_FILE
			echo "#Script:  "$1"_"$DATE".sh" >>  $SCRIPT_FILE
			echo "#Título: "$1"" >> $SCRIPT_FILE
			echo "# Descripcion: Muestra Hello world" >> $SCRIPT_FILE
			echo "#Fecha: "$DATE"" >> $SCRIPT_FILE
			echo "#Autor: "$USER"" >> $SCRIPT_FILE
			sudo chmod +x $SCRIPT_FILE
			sudo nano $SCRIPT_FILE 
		;;
		3)
			echo "El programa termina."
		;;
		*)
			echo "Opción incorrecta."
	esac
fi
if [ $BANDERA -eq 1 ]
then 
	touch $SCRIPT_FILE
	echo -e "#!/bin/bash\n" > $SCRIPT_FILE
	echo "#Script:  "$1"_"$DATE".sh" >>  $SCRIPT_FILE
	echo "#Título: "$1"" >> $SCRIPT_FILE
	echo "# Descripcion: Muestra Hello world" >> $SCRIPT_FILE
	echo "#Fecha: "$DATE"" >> $SCRIPT_FILE
	echo "#Autor: "$USER"" >> $SCRIPT_FILE
	sudo chmod +x $SCRIPT_FILE
	sudo nano $SCRIPT_FILE
fi
