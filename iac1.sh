#!/bin/bash

echo "Criando Diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos..."

gruopadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuarios..."

useradd carlos -m -s /bin/bash -c "Carlos Oliveira" -G 
useradd maria -m -s /bin/bash -c "Maria José" -G
useradd joão -m -s /bin/bash -c "João Lucas" -G

useradd debora -m -s /bin/bash -c "Débora Santos" -G
useradd sebastiana -m -s /bin/bash -c "Sebastiana Oliveira" -G
useradd roberto -m -s /bin/bash -c "Roberto Carlos" -G

useradd josefina -m -s /bin/bash -c "Josefina Silva" -G
useradd amanda -m -s /bin/bash -c "Amanda da Silva COsta" -G
useradd rogerio -m -s /bin/bash -c "Rogério da Slva Mendes" -G

echo "Especificando permissoes dos diretórios..."

chown root:GRP_ADM/ adm
chown root:GRP_VEN/ ven
chown root:GRP_SEC/ sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publica

echo "Fim..."
