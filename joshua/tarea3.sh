#!/bin/bash
echo "iniciando"

path="/mnt/c/Users/ZBook/codeSh/examensh/paralaprueba/joshua/archivos"

read -p "cuantos archivos deseas crear ? [1-5]" count
for ((i; i< count; i++)) 
 do 
	read -p "nombre del archivo " name
	touch "$name"
	
	fecha=$(date -r "$name" "+%y-%m-%d")

	mv "$name" "$path/"
	echo "archivo '$name' creado el '$fecha'"

done
echo "finalizado"
