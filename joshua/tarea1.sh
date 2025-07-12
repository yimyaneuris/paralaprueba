#!/bin/bash
read -p "ingresa el nombre del archivo que deseas crear: " name
if echo "$name" | grep -Eq "^[a-zA-Z0-9._-]+$"; then

echo "creando archivo '$name'"
sudo touch "$name"
else

echo "Nombre inválido"
fi
