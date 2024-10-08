#"crear usuario"
sudo useradd developer 
sudo useradd tester
sudo useradd devops
sudo useradd diseñador

#"crear grupo"
sudo groupadd grupodevops  
sudo groupadd grupodiseño
sudo groupadd grupodeveloper

#"agregar usuarios al grupo "
sudo usermod -aG grupodevops developer 
sudo usermod -aG grupodiseño tester
sudo usermod -aG grupodeveloper devops

#esto se ejecuta desde /resultados ya que no estamos usando una ruta absoluta 

sudo whoami > EXAMENES-UTN/alumno_1/validar.txt
sudo whoami > EXAMENES-UTN/alumno_2/validar.txt   
sudo whoami > EXAMENES-UTN/alumno_3/validar.txt

sudo chmod -R 750 EXAMENES-UTN/alumno_1
sudo chmod -R 760 EXAMENES-UTN/alumno_2
sudo chmod -R 700 EXAMENES-UTN/alumno_3
sudo chmod -R 775 EXAMENES-UTN/profesores 
