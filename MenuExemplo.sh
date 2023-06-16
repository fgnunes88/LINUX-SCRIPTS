#!/bin/bash

# Exibição do Menu
clear
echo "Escolha uma Opção do Menu"
echo ""
echo "1 - Adicionar"
echo "2 - Remover"
echo "3 - Alterar"
echo "q - sair"
echo ""
read -p  "Opção:  " OPCAO
echo ""

#Rotinas das Opções
case "$OPCAO" in
	1) 
		echo "Opcão 1 escolhida."
		echo "Iniciar Operação de Inclusão..."
		sleep 3
		;;
	
	2)     
	       	echo "Opcão 2 escolhida."
                echo "Iniciar Operação de remoção..."
                sleep 3
                ;;

	3)
                echo "Opcão 3 escolhida."
                echo "Iniciar Operação de Alteração..."
                sleep 3
                ;;

	q)
		echo "Saindo..."
		sleep 3
		;;
	*)
		echo "Opcão inválida"
		exit 2		
		;;
esac
