#!/bin/bash

mkdir /publico /adm /ven /sec

echo "Criando os grupos.."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo -e "Feito!\n"


echo "Criando os usuários.."
useradd carlos -m -G GRP_ADM -s /bin/bash
useradd maria -m -G GRP_ADM -s /bin/bash
useradd joao -m -G GRP_ADM -s /bin/bash

useradd debora -m -G GRP_VEN -s /bin/bash
useradd sebastiana -m -G GRP_VEN -s /bin/bash
useradd roberto -m -G GRP_VEN -s /bin/bash

useradd josefina -m -G GRP_SEC -s /bin/bash
useradd amanda -m -G GRP_SEC -s /bin/bash
useradd rogerio -m -G GRP_SEC -s /bin/bash
echo -e "Feito!\n"

echo "Alterando o permissionamento dos diretórios.."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
echo -e "Feito!\n"
