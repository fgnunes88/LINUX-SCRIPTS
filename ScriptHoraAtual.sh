#!/bin/bash

#HORARIO=$(date +%H)
HORARIO=$1
HORAATUAL=$(date +%I:%M" "%p)

if
	test "$HORARIO" -ge 6 -a "$HORARIO" -lt 12

	then
		echo "Bom Dia!"
		echo ""
		echo "A hora atual é: " $HORAATUAL

elif
	test	"$HORARIO" -ge 12 -a "$HORARIO" -lt 18

	then
		echo "Boa Tarde!"
         	echo ""
         	echo "A hora atual é: " $HORAATUAL
 else
	
	 echo "Boa Noite!"
         echo ""
         echo "A hora atual é: " $HORAATUAL



	
fi

