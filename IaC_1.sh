#!/bin/bash

echo "Criando os Diretorios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretorios Criados !"

echo "--------------------------"

echo "Criando grupos" 

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos Criados" 

echo "-----------------------"

echo "Criando Usuarios"

useradd Carlos -c "Carlos Silva" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd Maria  -c "Maria Silva" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd Joao  -c "Joao Silva" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM

useradd Debora -c "Debora Viana " -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd Sebastiana -c "Sebatiana Moura" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd Roberto -c "Roberto José" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN

useradd Josefina -c "Josefina Paula " -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd Amanda -c "Amanda Carla" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd Rogerio	 -c "Rogerio Morgado" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC

echo "Usuarios Criados" 

echo "---------------------------------------"

echo "Aplicando as Permissoes"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico


echo "Finalizado !!! "


