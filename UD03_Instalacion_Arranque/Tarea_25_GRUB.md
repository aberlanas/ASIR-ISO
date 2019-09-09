---
title: UD03 - Instalación y Arranque
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [ASIR, ISO, Instalación, Arranque, BIOS, UEFI]
contenidos: [C2.6,C2.7]
criterios-evaluacion: [RA01-6,RA01-9,RA01-8]
---

# Tarea: GRUB

Vamos a realizar una serie de tareas de configuración del Gestor de Arranque GRUB que nos permitirán modificarlo y adaptarlo a determinadas situaciones y configuraciones Hardware que requieren que ciertos parámetros estén establecidos (o no) durante el arranque.

## Ejercicio 1: /etc/default/grub

En el fichero `/etc/default/grub` podemos encontrar una serie de variables que definen el comportamiento de los scripts que, tal y como hemos visto en teoría, configuran el menú del **GRUB**.

Se pide modificar el fichero para que al ejecutar `sudo update-grub` y al reiniciar, los cambios se apliquen:

Los cambios que se piden son los siguientes:

* Debe aparecer el texto : Ubuntu +**NOMBREALUMN@** en la entrada del Grub de Xubuntu.
* Debe esperar 7 segundos el menú antes de arrancar la primera opción.
* Debemos establecer la resolución del `GFXMODE` a _1024x768_.

Una vez hayamos establecido estos cambios adjuntar el fichero al Moodle (`/etc/default/grub`)

## Ejercicio 2: nomodeset

En algunas máquinas por problemas de hardware, debemos no cargar los controladores de vídeo hasta que el display gráfico se inicia (xorg), para ello debemos cambiar la variable que se establece con los valores:

`quiet splash`

a:

`nomodeset`

Realiza el cambio, actualiza el grub y reinicia.

Adjunta el fichero `/etc/default/grub` y una breve descripción de como se comporta tras la modificación el arranque.

## Ejercicio 3: blacklisteando módulos

Otra de las acciones que podemos realizar en el gestor de arranque es deshabilitar módulos que se encargan de controlar hardware que tienen conflictos, o no se realizan su tarea como `$DEITY` manda. Para ello lo que se puede indicar mediante el argumento:

`NOMBREMODULO.modeset=0`

Por ejemplo:

`i915.modeset=0`

Realiza las modificaciones necesarias para que en el arranque **NO** se carge el módulo de _Nouveau_ en la máquina virtual de Xubuntu. Adjunta el fichero.

Asegurate de que la máquina sigue funcionando bien.

