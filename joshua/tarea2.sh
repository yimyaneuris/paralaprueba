#!/bin/bash

read -p "ingresa la longitud de caracteres: " longitud

 if echo "$longitud" | grep -Eq "^[0-9]+$"; then 
	echo "elige los caracteres deseados"
	echo "1 solo números"
	echo "2 números y letras"
	echo "3 números, letras y símbolos"
	read -p "elige una opción del 1-3: " option

		if echo "$option" | grep -Eq "^[1-3]$"; then
			case $option in
				1)
					caracteres="0123456789"
					password=$(tr -dc "$caracteres" < /dev/urandom | head -c "$longitud")
					echo "tu contraseña es '$password'"
					;;
				2) 
					caracteres="0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
					password=$(tr -dc "$caracteres" < /dev/urandom | head -c "$longitud")
					echo "tu contraseña es '$password'"
					;;
				3)
					caracteres="0123456789abcdfghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ()._+-=*/{}[]"
					password=$(tr -dc "$caracteres" < /dev/urandom | head -c "$longitud")
					echo "tu contraseña es '$password'"
					;;
				*)
					echo "error..."
					;;
				
			esac
		else
			echo "opción inválida..."
		fi
else 
	echo "longitud inválida"
fi
