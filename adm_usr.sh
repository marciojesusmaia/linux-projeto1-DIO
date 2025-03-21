#!/bin/bash

#criando diretorios

echo "Criando diretorios..."

mkdir /publico /adm /ven /sec

#criando os grupos
echo "Criando grupos de usuarios..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

#criando usuarios e adicionando grupos
echo "Criando os usuarios do sistema e adicionando aos grupos de acesso..."

useradd carlos -c "carlos" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd maria -c "maria" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd joao -c "joao" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM

useradd debora -c "debora" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd sebastiana -c "sebastiana" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd roberto -c "roberto" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN

useradd josefina -c "josefina" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd amanda -c "amanda" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd rogerio -c "rogerio" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC

#adicionando permissões 
echo "Especificando permições de usuarios..."

chown root:GRP_ADM /adm
chown root:GRP_SEC /sec
chown root:GRP_VEN /ven

chmod 770 /adm
chmod 770 /ven
chmod 770 /ven

chmod 777 /publico

echo "Configurações finalizada!"
