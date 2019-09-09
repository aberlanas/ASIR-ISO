---
title: UD08 - Seguridad
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [ASIR, ISO, Seguridad]
---

# Tarea: Crear RAID 1 (Mirror) por Software en Ubuntu

En esta actividad crearemos un RAID por Software en Ubuntu. Para ello utilizaremos la distribución Xubuntu que tenemos preparada.

Deben añadirse dos discos duros a una máquina virtual  y configurarlos utilizando los pasos vistos en clase como un RAID 1 y que se monte de manera automática en el arranque en la carpeta `/srv/datosReflejados`.

Ejemplo:

* `/dev/sdb1`
* `/dev/sdc1`

Cuando este finalizado, avisar al profesor para que tome nota del resultado.

## Pasos:

Creamos un dispositivo de tipo mirror disk

```shell

mknod /dev/md1 b 9 0

```

Creamos un raid con mdadm

```shell

mdadm --create /dev/md1 --level=raid1 --raid-devices=2 /dev/sdb1 /dev/sdc1

```

Comprobamos el progreso ejecutando el comando:

```shell

cat /proc/mdstat

```

Cuando el disco haya sido completamente sincronizado ya podemos particionarlo y establecer el punto de montaje.

## Configuración del RAID 1 con mdadm

Si ejecutamos el comando:

```shell

mdadm -Es  >> /etc/mdadm/mdadm.conf

```
debemos ir al fichero */etc/mdadm/mdadm.conf* y comprobar que la línea que se ha añadido al fichero tiene el formato correcto:

```shell

ARRAY /dev/md1 UUID=e4665ceb:15f8e4b6:b186d497:7d365254

``` 

El UUID obviamente será distinto. Para comprobarlo podemos editarlo con el nano:

```shell

nano /etc/mdadm/mdadm.conf

```


Una vez configurado de manera correcta es el momento de añadir la configuración al initramfs que arranca la máquina:

```shell

update-initramfs -u

```

## Creación del sistema de archivos

Crearemos el sistema de archivos mediante la terminal con el comando:

```shell

mkfs.ext4 /dev/md1

```


En caso de que se desee utilizar otro sistema de ficheros, se puede utilizar cualquier otro creador de sistema de ficheros (ext3,reiserfs,...).

## Añadir el RAID a los puntos de montaje

Ahora es el momento de establecer el montaje de manera automática, crearemos el directorio donde queremos establecer el RAID 1, por ejemplo */datos*.

```shell

sudo mkdir -p /datos

```


Editamos el fichero /etc/fstab o añadimos uno nuevo al directorio /etc/fstab.d/

```shell

sudo nano /etc/fstab

```


Y establecemos el punto de montaje:

```shell

/dev/md1 /punto_de_montaje sistema_de_archivos defaults,user 0 0

```


Para comprobar que todo esta funcionando correctamente podemos probar a montar utilzando solo el punto de montaje (/datos) o mediante la orden: `mount -a`


```shell

sudo mount /punto_de_montaje
sudo mount -a

```

Si todo está funcionando reiniciamos para que el montaje del RAID se haga desde el primer momento.

```shell
sudo reboot
```







## Enlaces de interés

 * [mdadm cheat sheet](http://www.ducea.com/2009/03/08/mdadm-cheat-sheet/)
 * [Ubuntu Forums BUG](http://ubuntuforums.org/showthread.php?t=1764861)
 * [Guia Ubuntu RAID](http://www.guia-ubuntu.com/index.php?title=Crear_una_Software_RAID#RAID1_.28Mirrored.29)

