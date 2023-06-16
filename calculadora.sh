#!/bin/bash

######### Exercício 1 - Calculadora #############
# Dono: Felipe Nunes				#
#						#	
#                                            	#
#################################################




echo ""
echo "=========== CALCULADORA ============="
echo ""
read -p "Digite o Primeiro Número:" N1

echo ""
read -p "Digite o segundo Numero:" N2
RESULTADO=$((N1+N2))
echo ""

echo "O Resultado da sua Operação é" $RESULTADO


