---
title: UD04 - Administración básica
author: Angel Berlanas Vicente
header-includes: |
keywords: [ASIR, ISO, Usuarios, Grupos, Red]
---

# Comandos varios

## Comando echo

El comando `echo` muestra en su salida todo lo que se le pase como argumento.

Ejemplo:

 * `$ echo Hola amigo...`
 * Hola amigo...

## Comando set

El comando `set` sirve para gestionar las variables y funciones del shell. Si se ejecuta `set` directamente sin parámetros, nos devuelve los nombres y valores de varias funciones del shell.

## Comando set

En bash no es necesario asignar variables mediante set variable=valor, sino que se puede usar directamente variable=valor. Sin embargo, nos podemos encontrar trabajando con otros shells, como csh en los que es obligatorio usar el set para asignar valores a las variables.

## Comando history

El comando `history` nos permite controlar el histórico de comandos que se van almacenando en el shell. El histórico se almacena por defecto en el fichero `~/.history` lo que nos indica que existe un histórico diferenciado para cada usuario. Si ejecutamos el comando history nos devolverá la relación de comandos para ese usuario.

Ejemplos:

 * `# history`

Una posibilidad es enviar la salida de la orden history a un fichero, con lo que conseguimos tener una relación de los comandos que hemos ejecutado.

 * `# history > historial_del_usuario`

## Comando uname

El comando `uname` nos da información sobre el sistema, como el nombre del kernel, su versión, el nombre de la maquina, etc.

 * `# uname -a`

\newpage
## Comando date

El comando `date` sirve para consultar y cambiar la fecha y hora del sistema.

 * `# date`

El comando `date` tiene bastantes opciones, y con el se pueden hacer bastantes cosas. Es recomendable echarle un vistazo a sus páginas de manual para entenderlos bien. Veamos algunos ejemplos.

 * `$ date --date=”2 days ago”`
 * Nos da la fecha de hace dos días
 * `$ date --date=”3 months 1 day”`
 * Nos da la fecha que será en 3 meses y un día.
 * `$ date --date=”25 Dec”`
 * Nos da el dia que será el 25 de Diciembre del año actual
 * `$ date “+%B %d”`
 * Nos devuelve el nombre del mes actual y el número de día del mes.
 * `$ date --set=”2006-6-20 11:59 AM”`
 * Ajusta la fecha del sistema
 * `$ date --set=”+3 minutes”`
 * Adelanta la hora del sistema en 3 minutos.

##Comando time

El comando `time` sirve para cronometrar cuanto tiempo tarda en ejecutarse un comando cualquiera, y que recursos consume. Puede ser una orden interesante para comprobar el rendimiento de los sistemas.

 * `# time wc /etc/passwd`

## Comando uptime

El comando `uptime` nos indica las el “uptime” del sistema. En informática se conoce como uptime el tiempo que un equipo lleva “levantado”, es decir cuanto tiempo lleva el sistema funcionando. En un servidor es muy importante que este uptime sea lo más elevado posible. `uptime` nos devuelve cuanto tiempo lleva el equipo levantado, el número de usuarios que están conectados, y la media de las cargas de sistema para los últimos 1, 5, y 15 minutos.

 * `# uptime`

## Comando top

El comando `top` nos muestra los procesos que se están ejecutando en nuestra maquina, y cuantos recursos están ocupando. Es una orden muy interesante por que nos permite ver como se encuentra nuestro sistema de “cargado”, que procesos son los que están consumiendo más recursos, etc. Si pulsamos **h** en la pantalla de `top`, veremos una pantalla de ayuda donde podemos ordenar la lista de procesos según su consumo de *cpu, memoria, etc*.

 * `# top`

## Comando dmesg

Nos da una lista con todos los mensajes que se han producido durante el arranque del sistema. Log de arranque del Kernel.
Se guarda tambien en : `/var/log/dmesg`

 * `# dmesg`

## Comando tee

Nos duplica la salida de la entrada que recibe, mostrándola por salida estándar y además redirigiendola a un fichero que acepta como parámetro.

Sintaxis : `cat /etc/apt/sources.list | tee misOrigenesDelSoftware.bak`

También puedes realizar un *append*, es decir, concatenar al final del fichero si le añades el parámetro: "-a".

Ejemplos:

  * `$ sudo cat /etc/hostname | tee -a ListaDeCosas.txt`
  * `$ sudo cat /etc/apt/sources.list | tee -a ListaDeCosas.txt`
  * `$ sudo cat /etc/apt/apt.conf.d/* | tee -a ListaDeCosas.txt`

## Comando sed

Se trata de un editor "de streams" que nos permite realizar sustituciones de cadenas/palabras/números en un fichero, entrada, salida...

Sintaxis : sed -e "s/[PATRON]/[COSA QUE QUEREMOS EN SU LUGAR]/g" fichero

Tambien puedes cambiar la entrada estándar, o un fichero en si mismo. `sed` es de las herramientas más poderosas de GNU/LinuX y es muy versátil y potente.

Ejemplos:

 * `$ cat /etc/hostname | sed -e "s/ubuntu/orquesta/g" > /tmp/nuevoHostname`
 * Cambiamos el hostname del equipo en caso de que sea "ubuntu" y lo establecemos a "orquesta"
