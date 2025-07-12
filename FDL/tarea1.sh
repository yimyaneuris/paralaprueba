#!/bin/bash

#Crear archivos segun el argumento que ponga el usuario

read -p "Escribir el nombre del archivo:" archivo

if [ -e "$archivo" ]; then
echo "Ya existe"
exit
fi

touch "$archivo"

chmod 600 "$archivo"

echo "Archivo '$archivo' creado con permisos restringuidos"

#No esta lista
