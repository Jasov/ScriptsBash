#!/bin/bash
#author:Joel Cardenas
# Script que recibe tres parametros y realiza tres funciones diferentes.

parametro1=$1
parametro2=$2
parametro3=$3

menu() {
    echo "==============================="
    echo "Menú de opciones:"
    echo "1. Crear carpeta con nombre $parametro1"
    echo "2. Crear archivo con nombre $parametro2"
    echo "3. Crear carpeta con nombre $parametro3 y tres subcarpetas que contengan archivo con nombre $parametro2 "
    echo "4. Salir"
    echo "==============================="
}

if [ $# -ne 3 ]; then   # Condicional, verifica si el número de parametros es igual a 3
    echo "Error: Debes proporcionar tres parámetros."
    exit 1 	        
fi

while true; do
    menu
    read -p "Seleccione una opción (1-4): " opcion

    case $opcion in
        1)mkdir $parametro1 
        echo "Carpeta $parametro1 creada.";;
        2)touch $parametro2
          echo "Archivo $parametro2 creado.";;
        3)mkdir $parametro3
  	echo "Carpeta $parametro3 creada."
  	for directorio in Carpeta1 Carpeta2 Carpeta3; do
        mkdir "$parametro3/$directorio"
        touch "$parametro3/$directorio/$parametro2"
        echo "Archivo $parametro2 creado en $parametro3/$directorio."
        done;;
        4) echo "Saliendo del script."
           exit 0;;
        *)echo "Por favor, elija una opción valida.";;
    esac
done

