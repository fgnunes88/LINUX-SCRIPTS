#!/bin/bash

read -p "Informe valor 1: " VAR1

read -p "Informe valor 2: " VAR2

for i in $(seq "$VAR1" "$VAR2")

do

echo "O valor é: $i"

done
