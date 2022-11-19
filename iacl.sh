#!/bin/bash

echo "Creating dirs"

mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec

echo "Creating user groups"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Creating users"

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_ADM
useradd john -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_ADM
useradd robert -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_VEN
useradd joseph -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_VEN
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_SEC
useradd roger -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_SEC

echo "Specifying permissions"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /public

echo "END......"


