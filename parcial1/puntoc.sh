#"crear usuario"
sudo useradd developer 
sudo useradd tester
sudo useradd devops
sudo useradd diseñador

#"crear grupo"
groupadd grupodevops  
groupadd grupodiseño
groupadd grupodeveloper

#"agregar usuarios al grupo "
usermod -aG grupodevops developer 
usermod -aG grupodiseño tester
usermod -aG grupodeveloper devops

#esto se ejecuta desde /resultados ya que no estamos usando una ruta absoluta 

sudo whoami > EXAMENES-UTN/alumno_1/validar.txt
sudo whoami > EXAMENES-UTN/alumno_2/validar.txt   
sudo whoami > EXAMENES-UTN/alumno_3/validar.txt

sudo chmod -R 750 EXAMENES-UTN/alumno_1
sudo chmod -R 760 EXAMENES-UTN/alumno_2
sudo chmod -R 700 EXAMENES-UTN/alumno_3
sudo chmod -R 775 EXAMENES-UTN/profesores 
