#!/bin/bash

echo""
echo "REMOVENDO USUÁRIOS..."
echo ""
for usuario in $(cat /root/Scripts/lista-users.txt)
do
	echo "Removendo usuário: $usuario"
	sleep 1
	userdel -r $usuario
	echo "Usuário removido com sucesso!"
	sleep 1

done
echo ""
rm -f /root/Scripts/dados.txt >> /dev/null 2>&1
echo "USUÁRIOS REMOVIDOS COM SUCESSO!"
sleep 2
