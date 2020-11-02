#!/bin/bash

read -p "Digite o nome do arquivo:" arq
linhas=$(wc -l $arq | cut -f1 -d ' ')

for i in $( seq 1 $linhas ); do
	[ $(( $i % 10 )) -eq 0 ] && read -p "Aperte enter para continuar."
	sed -n "$i"p $arq
done
