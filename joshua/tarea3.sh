#!/bin/bash
echo "iniciando"

read -p "Introduce la ruta de la carpeta en la que quieres organizar los archivos por fecha de modificación :" path

for archivo in "$path"/*; 
 do 
	if [ -f "$path" ]; then
	fecha=$(date -r "$path" +"%y-%m-%d")
	"$path/" date -r	

done
echo "finalizado"
