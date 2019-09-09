---
title: UD06 - Sistemas de Ficheros
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [ASIR, ISO, Sistemas de ficheros]
contenidos: [C4.1,C4.2,C4.8]
criterios-evaluacion: [RA03-20,RA03-21, RA03-24]
---

# Tarea: Sistemas de Ficheros y particiones

## Ejercicio 1

Busca en internet información acerca de los siguientes sistemas de ficheros. Averigua si se pueden optimizar para el uso de discos de estado sólido (SSD). En caso afirmativo, describe como se configuraría.

Comprueba si los Sistemas Operativos incluyen soporte para poder `montar` dispositivos formateados en ese sistema de ficheros.

| Sistema de Ficheros | Windows | GNU/LinuX | Optimización SSD |
| -------------------- | ------- | -------- | ------- |
| FAT32| | | |
| NTFS | | | |
| exFAT| | | |
| ext4 | | | |
| btrfs| | | |
| xfs |  |  |

## Ejercicio 2

En la empresa _Diseño Gráfico El Bosco_ están buscando un administrador de Sistemas, necesitan montar dos servidores, en uno de ellos necesitarán aplicar Listas de Control de Acceso y permisos extendidos.
¿Qué sistema de ficheros deberían utilizar para sus discos?
Tienen instalado una distribución basada en Ubuntu.

En el otro servidor necesitan almacenar una grandísima cantidad de ficheros muy pequeños. ¿Qué sistema de ficheros sería lo recomendable?
Realiza una descripción lo más detallada posible de las propuestas de solución.

## Ejercicio 3

Documenta el siguiente Script, describiendo que está realizando en cada línea:

```shell
#!/bin/bash

for f in $(seq 1 1000); do 
    dd if=/dev/zero of=/mnt/$f.dat bs=4M count=5
done

```

## Ejercicio 4

Utilizando el comando `iotop` elabora un pequeño informe acerca del uso del disco por parte de las siguientes aplicaciones a lo largo de un uso _normal_ durante 5 minutos cada una.

| Aplicación | Disco Leido (acumulado)| Disco Escrito  (acumulado)|
| ---------- | ---------------------- | --------------------|
| Firefox | ||
| Chromium | | |
| LibreOffice | | |
| Thunar| | |

## Ejercicio 5

Añade un disco de 2 GigaBytes de capacidad a la máquina virtual de Windows 10
y desde el administrador de discos, formatea el nuevo disco en una única partición de 2 GigaBytes.

Móntala en la unidad `J:\`. Adjunta captura de pantalla.