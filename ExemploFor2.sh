#!/bin/bash

for i in /root/Scripts/*.sh
do
	NLINHAS=$(cat $i | wc -l)
	echo "O número de linhas do arquivo "$i" é: "$NLINHAS""

done
