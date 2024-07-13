mkdir publico
mkdir adm
mkdir ven
mkdir sec

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

chown :GRP_ADM adm
chown :GRP_VEN ven
chown :GRP_SEC sec

chmod -R 777 publico
chmod -R 770 adm
chmod -R 770 ven
chmod -R 770 sec

sudo useradd -m -s /bin/bash -G GRP_ADM carlos && echo "carlos:1234" | sudo chpasswd
sudo useradd -m -s /bin/bash -G GRP_ADM maria && echo "maria:1234" | sudo chpasswd
sudo useradd -m -s /bin/bash -G GRP_ADM joao && echo "joao:1234" | sudo chpasswd

sudo useradd -m -s /bin/bash -G GRP_VEN debora && echo "debora:1234" | sudo chpasswd
sudo useradd -m -s /bin/bash -G GRP_VEN sebastiana && echo "sebastiana:1234" | sudo chpasswd
sudo useradd -m -s /bin/bash -G GRP_VEN roberto && echo "roberto:1234" | sudo chpasswd

sudo useradd -m -s /bin/bash -G GRP_SEC josefina && echo "josefina:1234" | sudo chpasswd
sudo useradd -m -s /bin/bash -G GRP_SEC amanda && echo "amanda:1234" | sudo chpasswd
sudo useradd -m -s /bin/bash -G GRP_SEC rogerio && echo "rogerio:1234" | sudo chpasswd
