#!/bin/bash

#Organizador

echo "Que documentos quieres organizar"

echo "1.pdf"
echo "2.jpg"
echo "3.png"
echo "4.excel"
echo "5.word"
read opcion

case $opcion in
1)
pwd
read ruta
mkdir pdf $ruta
echo "Carpeta creada"
;;
2)
pwd
read ruta
mkdir jpg $ruta
echo"Carpeta creada"
;;
esac
