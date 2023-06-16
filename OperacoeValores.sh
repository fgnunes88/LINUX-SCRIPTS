#!/bin/bash

echo ""
read -p "Informe o primeiro valor: " VAR1
read -p "Informe o segundo valor: " VAR2

if [ ! $VAR1 ] || [ ! $VAR2 ]
then
	echo "Nenhum dos Valores pode ser nulo"
	exit 1
fi

echo ""
echo "ESCOLHA UMA OPERAÇÃO:"
echo ""
echo "1 = Soma "
echo "2 = Subtração"
echo "3 = Multiplicação"
echo "4 = Divisão"
echo "q = Sair"
echo ""
read -p "Opção: " OPT
echo ""
case $OPT  in

	1)
		OPER="+"
		;;

	2)	
		OPER="-"
		;;

	3)	
		if [ $VAR1 -eq 0 -o $VAR2 -eq 0 ]
		then 
			echo "O Valor Zero não pode ser usado numa multiplicação"
			exit 1
		fi
		OPER= "*"
		;;

	4)	
		if [ $VAR1 -eq 0 -o $VAR2 -eq 0 ]
		then	
	
			echo "O Valor Zero não pode ser usado numa divisão"
			exit 1
		fi
		if [ $(expr "$VAR1" % "$VAR2") -ne 0]
		then 
			echo "Divisão com Resto = $(expr "$VAR1" % "$VAR2")"
		else

			echo "Divisão Exata"
		fi
		echo
		OPER="/"
		;;
		
	[Qq])	
		echo "Saind0..."
		exit 1
		;;

	*)
		echo "Opção Inválida"
		exit 1
               ;;

esac
echo "$VAR1 $OPER $VAR2 = $(expr $VAR1 "$OPER" "$VAR2")"


