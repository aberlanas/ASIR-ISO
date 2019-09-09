---
title: UD04 - Administración de Procesos y Red
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [ASIR, ISO, Procesos, Red]
---

## Shell en GNU/LinuX

Cuando abrimos una terminal en el modo gráfico o iniciamos sesión en una de las ttys (tal y como hemos visto anteriormente), lo que se muestra al usuario es un intérprete de órdenes, o también llamado *shell*. La shell que tiene predeterminado un usuario lo tenemos en el fichero `/etc/passwd`.

La shell nos muestra siempre cierto *Prompt*, que son los  carácteres que se muestran en una línea de comandos para indicar que está a la espera de órdenes. Éste puede variar dependiendo del intérprete de comandos y suele ser configurable.

Cuando iniciamos sesión con el usuario *violin* en una terminal, lo que se nos muestra es algo parecido a esto:

`violin@xubuntu:~$`


¿Que información nos ofrece?

 * El usuario es *violin*
 * Se encuentra en una máquina cuyo nombre es *xubuntu*
 * Su directorio actual es : *~*
 * Se trata de un usuario distinto de **root**

En el caso de que nos hubieramos logado con el usuario **root**, el prompt habría cambiado y tendría este aspecto:

`root@xubuntu:~#`

¿Qué información nos ofrece?

 * El usuario es **root** (id=0)
 * Se encuentra en una máquina cuyo nombre es *xubuntu*
 * Su directorio actual es : *~*
 * Se trata del usuario **root**, ya que tiene un "#" justo antes de la entrada de órdenes.

Este entorno de texto donde nos encontramos y que nos permite introducir comandos es conocido comúnmente como Shell (caparazón).

Este Shell es capaz de interpretar una gran gama de comandos y sentencias. Constituye a su vez un poderoso lenguaje de programación mediante scripts.

GNU-Linux tiene la filosofía de no obligar al usuario a utilizar un programa determinado para cada acción, sino que siempre da la libertad de elegir el programa que queremos utilizar. Lo mismo ocurre con el Shell que vayamos a utilizar para acceder al sistema. El Shell que más se usa es conocido como bash, aunque existen una gran variedad de ellos, como por ejemplo csh, ksh, etc.

### Características de BASH

Algunas características que merece la pena conocer de bash son:

 * **Auto completar** durante la escritura. Al teclear uno o varios caracteres se puede pulsar *TAB* con el objetivo de que en caso de que pueda completarse de forma unívoca un comando, nombre de fichero o una variable (según el contexto), complete de forma automática (se escriba el resto de la palabra). Si existieran varias posibilidades para completar la palabra, se oirá un sonido y volviendo a pulsar TAB se mostrarán en pantalla todas las posibilidades existentes. En caso de existir muchas posibilidades (por defecto más de 100) se pregunta si se desea mostrarlas todas o no. PowerShell también incluye un comportamiento similar pero no funciona de la misma manera.
 * **Historial de comandos**. Esta es una característica de muchos otros shells que permite el movimiento a través de los últimos comandos ejecutados, sea en la sesión actual o en las anteriores. Por defecto se acceden a los últimos 1000 comandos, pero puede modificarse. Para moverse arriba y abajo se suelen utilizar los cursores.
 * **Poderosas estructuras de control para realizar scripts**. (Procesos por lotes/Guiones). Se pueden utilizar
instrucciones if, for, while, select, case, etc.
 * **Definición de funciones y alias para comandos.** Las funciones permiten definir subrutinas programadas usando el lenguaje de bash. Los alias permiten asociar nombres llamadas a comandos con ciertas opciones y argumentos de forma más nemotécnica o abreviada.

