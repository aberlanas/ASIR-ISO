---
title: UD06 - Sistemas de Ficheros
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [ASIR, ISO, Sistemas de ficheros]
criterios-evaluacion: [RA03-24,RA03-26,RA08-63,RA08-64]
---

# Tarea: 11 de Febrero - Parte III

# _¡Atención Navegantes!_
Se deben realizar las tareas descritas en el ejercicio de manera que se demuestre que se sabe hacer, no se trata tan solo de «Presentar» un trabajo, sino de la evaluación de como se realiza y si el alumnado ha adquirido la destreza necesaria.

Nos encontramos cerca de la semana del 11 de Febrero, día Internacional de la Mujer y la Niña y en la Ciencia. Vamos a trabajar los conceptos vistos a lo largo de estos meses con la ayuda inestimable de nuestra investigadora favorita...Ada Lovelace (Ada Byron, Condesa de Lovelace). 
Ada Lovelace fue una maravillosa matemática que junto a Charles Babbage estableció las bases del Software y del Hardware. Le debemos la informática tal y como la conocemos hoy en día. Ha llegado el momento de que le ayudemos en una serie de problemas que tiene.

Por supuesto asumiremos que disponemos de la capacidad de viajar a los diferentes universos de bolsillo que se plantean en la actividad. Un poco de imaginación no nos viene mal.

----

# Misión 6 : Hardware de La Máquina

Estamos acabando nuestra misión de ayudar a Ada a gestionar todo lo que tiene que ver con la máquina.
Con la ayuda de sus amig@s han incrementado la potencia de la máquina y le han añadido multitud de componentes. Sin embargo Ada no estaba presente cuando se le han añadido, con lo que necesita saber cuales son las nuevas características de la máquina.

![Ada 05](11DeFebrero_Ada/ada05.png)

Se pide la realización de 3 Scripts que realicen las siguientes operaciones:

`./ada-ram.sh `

Muestra la cantidad de Memoria RAM Total de la maquina y la USADA ( TOTAL - DISPONIBLE)

----

`./ada-ip.sh`

Muestra la IP de las diferentes tarjetas de RED de la máquina, así como la dirección de la RED de las distintas REDES (Si las hubiera).

----

`./ada-discos.sh`
Muestra las distintas particiones y discos así como su formato y su punto de montaje, separados por “;”.  
Ejemplo:

```shell
/dev/sda1;ext4;/
/dev/sda2;swap;none
/dev/sda5;ext4;home
```

----

\newpage

# Misión 7: ¡Fragmentos perdidos!

Ada ha realizado un script que funcionaba bien, pero con el lio que llevamos, se han perdido unos fragmentos. Ayuda a Ada a completarlo de nuevo.

```shell

#!/bin/bash
echo " * Welcome to the Last Machine Calculator"
echo -n " Dame el primer numero : "
# FRAGMENTO PERDIDO
echo -n " Dame la potencia: "
# FRAGMENTO PERDIDO

# FRAGMENTO PERDIDO
echo "Cuando elevo $NUMERO A $POTENCIA obtengo: $SOLUCION1"

echo " * Dame una IP de la red"
# FRAGMENTO PERDIDO
echo " * Dame el numero de hosts para la red"
# FRAGMENTO PERDIDO

# FRAGMENTO PERDIDO
echo " - LA MASCARA ES : $MASCARA"

# FRAGMENTO PERDIDO
echo " - El ultimo host es  : $HOSTMAX"
exit 0

```
