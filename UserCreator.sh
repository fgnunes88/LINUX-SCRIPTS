#!/bin/bash

echo ""
echo "CRIANDO USUÁRIOS..."

for usuario in $(cat /root/Scripts/lista-users.txt)
do
	echo ""
	echo "Criando usuário: $usuario"
	useradd -m $usuario
	SENHA=$(openssl rand -base64 6 | tr -dc 'a-zA-Z0-9' | head -c 8)
	echo $SENHA | passwd $usuario --stdin >> /dev/null 2>&1
	echo "Usuário criado com sucesso!"
	sleep 2
	echo "Seu usuário é: $usuario e sua senha temporária é $SENHA" >> dados.txt
	

done

echo ""
echo "TODOS OS USUÁRIOS CRIADOS COM SUCESSO!"
