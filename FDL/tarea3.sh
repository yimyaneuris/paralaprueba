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
3)
read pwd ruta 
mkdir png $ruta
mv *.png png
echo "Carpeta creada y archivos organizados"
;;
4)
read pwd ruta
mkdir excelNuevo $ruta
mv *.xlsx excelNuevo
echo"Carpeta creada ya rchivos organizados"
;;
esac
