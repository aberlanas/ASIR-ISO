---
title: UD03 - Instalación y Arranque
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [ASIR, ISO, Instalación, Arranque, BIOS, UEFI]
---

\newpage

# Grabación de imágenes [dd]

Ya hemos visto como grabar imágenes de Windows desde Windows, utilizando la herramienta *rufus*. Sin embargo, es muy importante también ser capaces de utilizar la terminal de GNU/LinuX para la grabación de imágenes. 

Aunque esto lo trabajaremos con más detalle más adelante en el módulo, vamos a ver un comando que nos permitirá realizar la copia de discos, particiones, etc. en los sistemas GNU/LinuX.

**dd** es un comando con muchas aplicaciones en los sistemas LinuX, ya que en estos sistemas cualquier dispositivo se trata como un fichero, así que un comando que realiza copias en *crudo* (RAW) de ficheros, nos permite la realización de copias *bit a bit* de dispositivos, particiones, etc. 

Es importante tener en cuenta que el acceso a los dispositivos requiere de privilegios de administración, así que necesitaremos *sudo* o *root* para poder ejecutarlos de manera satisfactoria.


## Uso básico de dd

El comando `dd` necesita básicamente dos argumentos *¿qué?* y *¿donde?*. Es decir, que cosa queremos duplicar o copiar ( **entrada** ) y donde queremos que eso se copie ( **salida** ). Una vez en marcha, `dd` copiará cada bit del origen en el destino, sin interpretarlo, procesarlo, ni nada. Se trata de una copia en *crudo*. Existen multitud de parámetros que se le pueden indicar a este comando para que actúe de otras maneras, pero por ahora vamos a ver su uso *básico*.

---

Tomaremos cómo **entrada** el fichero .iso que queremos grabar en el USB, indicandoselo mediante la ruta al fichero. 

Para indicarlo, se utiliza el argumento `if=` siendo `if` la abreviatura de *Input File* y el igual establece que utilizaremos como origen.

Por ejemplo, si tenemos el fichero .iso en nuestra carpeta `Descargas` el argumento que definirá que lo usemos como entrada será:

``` shell
if=/home/alumno/Descargas/Xubuntu.iso
```

Veremos más adelante todo esto en mayor profundidad.

---

La **salida** del comando `dd` será el *dispositivo* donde queremos grabar esa imagen. ¿Dónde se encuentra?. 

En los sistemas GNU/LinuX no tenemos unidad `F:\`, ni `C:\`, ni `D:\`, sino que existe un directorio que contiene las rutas a todos los dispositivos que tenemos en el sistema. Este es : */dev/*. 

Dentro podremos encontrar muchos ficheros que representan todos esos dispositivos. Unos de los más importantes son los discos duros que típicamente se representan como : 

> /dev/sd[a-z]

Y a continuación un número, que indica la partición de ese dispositivo. Como necesitamos el dispositivo, por ahora no nos interesa esa parte.

GNU/LinuX va *incrementando* la letra (a, b, c, d, ...) a medida que descubre nuevos discos conectados, luego podemos deducir que la letrá más *grande* indicará el dispositivo más recientemente conectado. Por ejemplo:

* `/dev/sda` -> Primer disco detectado (Típicamente nuestro disco de sistema)
* `/dev/sdb` -> USB que acabamos de conectar

> NOTA : Probar en clase y comprobar cual es el dispositivo de salida.

Una vez tengamos claro el dispositivo de **salida** (donde queremos grabar) el argumento quedaría de la siguiente manera:

Al igual que hemos visto con `if` el argumento `of` viene de las siglas de *Output File*.

``` shell
of=/dev/sdb
```

Cuando queremos grabar nuestra imagen descargada de Xubuntu (por ejemplo), utilizando dd, debemos ejecutar el comando siguiente:

```shell
sudo dd if=/home/alumno/Descargas/Xubuntu.iso of=/dev/sdb
```

>> NOTA: Mientras **dd** realiza la copia, la terminal no muestra ningún mensaje, así que hay que esperar.

Cuando el comando ha acabado, es importante ejecutar la orden : 

```shell
sync
```

Que se asegura de que todos los datos han sido escritos en los dispositivos y se puede extraer.

>> NOTA: Al igual que **dd**, **sync** no muestra ningún mensaje de progreso.

## Otros usos de dd

En temas posteriores veremos otros usos de dd, para el rescate de discos, particiones, borrados *seguros*, ...

