#!/bin/bash

case "$1" in
	[0-9])
		echo "O parametro é um número"
		;;
	
	[A-Z])
		echo "O parametro é uma letra maiúscula"
		;;
	
	[a-z])
		echo "O parametro é uma letra minúscula"
		;;
	
	*)	
		echo "O parâmetro é um caracter especial"
		
		
esac
