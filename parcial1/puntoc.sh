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

sudo chmod -r  750 /EXAMENES-UTN/alumno_1
sudo chmod -r  760 /EXAMENES-UTN/alumno_2
sudo chmod -r  700 /EXAMENES-UTN/alumno_3
sudo chmod -r  775 /EXAMENES-UTN/profesores


sudo whoami > /Examentes-UTN/alumno_1/validar.txt
sudo whoami > /Examentes-UTN/alumno_2/validar.txt
sudo whoami > /Examentes-UTN/alumno_3/validar.txt

 

