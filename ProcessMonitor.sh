#!/bin/bash

TIME=5
echo ""
if [ $# -eq 0 ]
then
	echo "FAVOR INFORMAR O PROCESSO QUE DESEJA MONITORAR."
	echo "./ProcessMonitor.sh <nome_do_processo>"
	exit 1

fi

while true
do
	if ps aux | grep $1 | grep -v grep | grep $0 > /dev/null
	then
		sleep $TIME
	else
		echo "ATENÇÃO!!! O PROCESSO $1 NÃO ESTÁ EM EXECUÇÃO!!"
		sleep $TIME

	fi
done
