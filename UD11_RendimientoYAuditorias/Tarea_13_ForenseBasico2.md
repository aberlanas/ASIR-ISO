---
title: UD11 - Rendimiento y Auditorias
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [ASIR, ISO, Auditorias, Herramientas Forenses]
---

# Tarea: Forense Básico 2

En esta práctica vamos a trabajar con una imagen de disco duro que simulará un disco que nos acaba de traer un cliente.

Esta vez nuestra aventura es un poco más difícil. Resulta que el otro dia estuvimos explicandole al cliente que era *muy conveniente* crear copias de seguridad de nuestros USBs y datos, ya que tal vez si ocurria una desgracia no pudieramos recuperarlos tan bien como lo hicimos ese dia.

Nuestro cliente se fué a casa, grabó cosas en el USB y realizó una copia de seguridad de la partición entera utilizando un programa llamado *supercopiasenRAW* que lo que hace es utilizar `dd` para realizar el copiado.

¡Pero tuvo mala suerte! Y resulta que ocurrió lo impensable:

> ¡Borró cosas y luego escribió en el USB! 

Así que cuando se dió cuenta de lo que había hecho, creó una copia de ese USB y os lo ha traido en un fichero **.iso**.

Ahora toca...rescatar lo posible.

## Conexión del disco duro

Esta vez no tenemos acceso al disco duro en si mismo...toca ingeniárselas para poder acceder a esos datos desde nuestro sistema.

Hemos visto que *Recuva* no accede a Imágenes ISO, solamente a Dispositivos *físicos*, sin embargo hemos encontrado un software muy útil que nos permite en **Windows** montar imágenes ISO como si Discos se tratar y efectuar operaciones sobre ellos.

> ImDisk

[ImDisk - Página del Proyecto](http://www.ltr-data.se/opencode.html/#ImDisk)

## Imagen del disco

La copia del disco nos la ha dejado el cliente en el repositorio.

[Imagen del USB](http://172.29.0.254/forense/imagen_datos_borrados_escritos.iso)

## Entrega

Realizar un informe detallando el proceso que se ha seguido para restaurar los datos.
