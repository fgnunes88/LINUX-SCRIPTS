#!/bin/bash
DIRETORIO=/usr/share/backup
SOURCEDIR=/root/Scripts
NAMEDATE=$(date +%Y%m%d)
NAMEFMT=$(echo "backup-scripts-$NAMEDATE")
ATUALDATA=$(date +%d/%m/%Y)


echo "VERIFICANDO A EXISTÊNCIA DE DIRETÓRIO..."
sleep 2
#VERIFICA A EXISTÊNCIA DE DIRETÓRIO

ls -l $DIRETORIO >> /dev/null 2>&1

#SE NÃO EXITIR O DIRETÓRIO

if  test "$?" -gt  0

                #ENTÃO
                then

                #CRIA O DIRETORIO

                                echo ""
                                echo "CRIANDO DIRETÓRIO DE BACKUP..."
				sleep 2
                                mkdir $DIRETORIO
                                echo ""

                #COMPACTAR TODOS OS ARQUIVOS DO DIRETÓRIO /root/scripts

                                echo "COMPACTANDO ARQUIVOS..."
				tar -czvf $NAMEFMT.tar.gz $SOURCEDIR/* >> /dev/null 2>&1
                                sleep 2
                		echo ""
		
		#COPIA O ARQUIVO COMPACTADO PARA O DIRETORIO DESTINO
								
                                echo "COPIANDO ARQUIVOS COMPACTADOS PARA O DIRETÓRIO DE DESTINO"
				yes | cp $SOURCEDIR/$NAMEFMT.tar.gz $DIRETORIO
				sleep 2
				echo ""
                
		#EXIBE RESULTADO POSITIVO DA CÓPIA

                                echo "BACKUP REALIZADO COM SUCESSO COM O NOME: " $NAMEFMT
				sleep 2

                #ENCERRA O SCRIPT COM CÓDIGO 0
                                
				exit 0

                #SE O DIRETÓRIO EXISTIR
 else
      
      echo ""
      echo "O DIRETÓRIO DE BACKUP JÁ EXISTE!"
      sleep 3

 fi
                #VERIFICA A EXISTÊNCIA DE BACKUP COM MENOS DE 7 DIAS

			     echo ""	
                             echo "VERIFICANDO A EXISTÊNCIA DE BACKUP ANTERIOR..."

                             find $DIRETORIO\*.tar.gz -ctime -7 >> /dev/null 2>&1

                                if

                                        test "$?" -eq  0

                                then
                                        echo ""
				    	echo "JA EXISTE UM BACKUP NO DIRETÓRIO $DIRETORIO REALIZADO HÁ 7 DIAS!"
					echo ""
					read -p "DESEJA CONTINUAR? (N/S)" OPCAO

                                        case $OPCAO in

                                                        s)

                                                           echo ""
                                                           echo "COMPACTANDO ARQUIVOS..."
							   sleep 2
                                                           tar -czvf $NAMEFMT.tar.gz $SOURCEDIR/* >> /dev/null 2>&1
                                                           echo ""
							   echo "COPIANDO ARQUIVOS..."
							   sleep 2 
							   yes | cp $SOURCEDIR/$NAMEFMT.tar.gz $DIRETORIO
                                                           echo ""
                                                           echo "BACKUP REALIZADO COM SUCESSO COM O NOME: " $NAMEFMT
                                                           sleep 2
							   exit
                                                           ;;
                                                        n)

                                                            echo ""
                                                            echo "CANCELANDO BACKUP"
                                                            sleep 3
                                                            exit
                                                            ;;

                                                        *)
                                                            echo ""
                                                            echo "OPÇÃO INVÁLIDA. INTERROMPENDO BACKUP"
                                                            sleep 3
                                                            exit
                                                            ;;
                                         esac

               # SE NÃO HOUVER BACKUPS COM MENOS DE 7 DIAS, CRIA O BACKUP IMDIATAMENTE

                                  else
                                                          echo ""
							  echo "GERANDO NOVO BACKUP..."
							  sleep 2 
							  tar -czvf $NAMEFMT.tar.gz $SOURCEDIR/* >> /dev/null 2>&1 
                                                          echo "COPIANDO ARQUIVOS..."
							  echo ""
							  sleep 2
							  yes | cp $SOURCEDIR/$NAMEFMT.tar.gz $DIRETORIO
                                                          echo ""
                                                          echo "BACKUP REALIZADO COM O NOME: " $NAMEFMT
                                   fi

                                   exit


