#!/bin/bash
read -p "inserta el servidor a comprobar :" servidor


if ping -c 2 -w 2 "$servidor"; then
echo "'$servidor' está vivo"

else 
echo "'$servidor' está muerto"
fi
