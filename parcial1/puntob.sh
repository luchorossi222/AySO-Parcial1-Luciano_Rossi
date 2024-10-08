
#lsblk 
loop0    7:0    0 63.9M  1 loop /snap/core20/2318
loop1    7:1    0   87M  1 loop /snap/lxd/29351
loop2    7:2    0 38.8M  1 loop /snap/snapd/21759
sda      8:0    0   40G  0 disk
└─sda1   8:1    0   40G  0 part /
sdb      8:16   0   10M  0 disk
sdc      8:32   0   10G  0 disk
sdd      8:48   0    2G  0 disk

#me permite gestionar este disco
sudo fdisk /dev/sdc
#la letra p me permite ver la tabla de particiones del disco seleccionado
p
#n me permite crear una nueva partición
n
#despues de n selecciono p(primaria) o e(Extendida)

last sector : +2.5G (me lo pide el profe)
#selecciono el espacio de la particion 

#w lo guardo y salgo
w
#repito el proceso par crear las otras particiones 

#para formatear es este comando:(ejemplo con la particion sdc1)
sudo mkfs.ext4 /dev/sdc1
#creamos una carpeta para montar el disco
 sudo mkdir /mnt/sdc1   # crear todas  sudo mkdir -p /mnt/sdc{1..3} ademas crear una para sdc5
# montamos en la carperta creada el disco sdc1
sudo mount /dev/sdc1 /mnt/sdc1


# en este caso para crear una lógica hice 3 primarias , una extebdidad y la q queda es lógica por defecto



#salida final lsblk (todas las particiones montadas 
#sdc1 = partición primaria 
#sdc2 = partición primaria 
#sdc3 = partición primaria 
#sdc4 = partición extendida(no se puede montar) 
#sdc5 = partición logica 
vagrant@VMexamen:/examen$ lsblk
NAME   MAJ:MIN RM  SIZE RO TYPE MOUNTPOINTS
loop0    7:0    0 63.9M  1 loop /snap/core20/2318
loop1    7:1    0   87M  1 loop /snap/lxd/29351
loop2    7:2    0 38.8M  1 loop /snap/snapd/21759
sda      8:0    0   40G  0 disk
└─sda1   8:1    0   40G  0 part /
sdb      8:16   0   10M  0 disk
sdc      8:32   0   10G  0 disk
├─sdc1   8:33   0  2.5G  0 part /mnt/sdc1
├─sdc2   8:34   0  2.5G  0 part /mnt/sdc2
├─sdc3   8:35   0  2.5G  0 part /mnt/sdc3
├─sdc4   8:36   0    1K  0 part
└─sdc5   8:37   0  2.5G  0 part /mnt/sdc5
sdd      8:48   0    2G  0 disk


