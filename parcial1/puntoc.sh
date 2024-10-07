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
