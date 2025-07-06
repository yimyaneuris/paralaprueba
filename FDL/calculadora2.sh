#!/bin/bash

while true; do
echo ''El Que Te Ayuda Hacer Tu Tarea''
echo ''------------------------------''
echo ''Mio dame el numero''
read num1
echo ''------------------------------''
echo ''y el otro pa cuando?''
read num2
echo ''------------------------------''
echo ''y que tu quiere hacer con eso?''
echo ''1. suma''
echo ''2. resta''
echo ''3. multiplicar''
echo ''4. division''
read opcion

case $opcion in
1) resultado=$(echo ''$num1 + $num2'' | bc)
echo ''resultado: $resultado''
;;
2) resultado=$(echo ''$num1 - $num2'' | bc)
echo ''resultado: $resultado''
;;
3) resultado=$(echo "$num1 * $num2" | bc)
echo ''resultado: $resultado''
;;
4) if [ ''$num2'' -eq 0 ]; then
echo ''Pana, pero desde cuando se divide entre 0?''
else
 resultado=$(echo ''$num1 / $num2'' | bc)
echo ''resultado: $resultado''
fi
;;
esac

echo ''¿Mio quieres hacer otra? s/n:''
read seguir

if [ ''$seguir'' == ''n'' ] || [ ''$seguir'' == ''N'' ]; then
echo ''Da la gracias por lo menos...''
break

fi
done
