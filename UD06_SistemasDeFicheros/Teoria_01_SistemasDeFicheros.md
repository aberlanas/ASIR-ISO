---
title: UD06 - Sistemas de Ficheros
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [ASIR, ISO, Sistemas de ficheros]
---

\newpage

# Estructura de ficheros y carpetas

Es práctica común en (casi) todos los sistemas operativos el estructurar los datos que maneja el sistema operativo en una estructura de árbol, cuyos componentes són las carpetas y los ficheros.

Las carpetas no son más que agrupaciones de ficheros y otras carpetas que siguen una estructura lógica y sobre la que podemos aplicar permisos, auditorías, etc. de una manera lógica.

Todos los usuarios están habituados a utilizar mecanismo (o casi todos) y no les es extraño hablar de la carpeta _Mis Documentos_ o _Descargas_, donde se almacenan los documentos y datos.

El trabajo con carpetas y ficheros es el trabajo del administrador, ya que el 90% del tiempo lo dedicaremos a operar con esta estructura lógica, ya sea para administrar permisos, datos, copias de seguridad, etc.

El trabajo con Sistemas de Ficheros y carpetas es uno de los pilares de los administradores de sistemas.

Recordad que como digo habitualmente:

>Todo en GNU/LinuX es un fichero.

Con lo que, si sabemos manejarnos con ellos, sabremos manejarnos con el sistema.

Las estructuras de ficheros están sobre unos sistemas de ficheros que son el mecanismo que tiene el Sistema Operativo para organizar los ficheros en el disco duro. Estos sistemas de ficheros se eligen en función de las prestaciones que debemos optimizar para el uso de los datos que almacenaremos en el disco duro.

Existen sistemas de ficheros que no soportan más de 11 caracteres en el nombre, sistemas  optimizados para grandes ficheros, para muchos y muy pequeños, etc. Es labor del administrador de sistema elegir el tipo de sistema de ficheros que utilizaremos en nuestro Sistema Operativo.

Podemos *Formatear* cada dispositivo o partición con un sistema de ficheros diferente, adecuándolos a las necesidades de nuestro Sistema Informático.

Estos dispositivos a su vez, pueden estar en volúmenes o **RAIDs**, esto lo veremos más adelante en la unidad.
