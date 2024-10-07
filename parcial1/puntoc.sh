sudo useradd developer
sudo useradd tester
sudo useradd devops
sudo useradd diseñador

sudo groupadd grupodevops
sudo groupadd grupodiseño
sudo groupadd grupodeveloper

sudo usermod -aG grupodevops developer
sudo usermod -aG grupodiseño tester
sudo usermod -aG grupodeveloper devops



sudo whoami > /Examentes-UTN/alumno_1/validar.txt
sudo whoami > /Examentes-UTN/alumno_2/validar.txt
sudo whoami > /Examentes-UTN/alumno_3/validar.txt

