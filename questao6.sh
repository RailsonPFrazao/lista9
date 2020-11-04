#!/bin/bash

read -p "Digite o nome do arquivo:" arq
linhas=$(wc -c $arq | cut -f1 -d ' ')
init=1
fini=10
echo $linhas
for i in $( seq 1 10 $linhas ); do
	echo $i
	cut -c"$init"-"$fini" $arq 
	read -p "Aperte enter para continuar."
	init=$(( $init + 10 ))
	fini=$(( $fini + 10 ))
done
