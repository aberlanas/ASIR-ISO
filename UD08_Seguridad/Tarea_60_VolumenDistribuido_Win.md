---
title: UD08 - Seguridad
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [ASIR, ISO, Seguridad]
---

# Tarea: Creación de un Volumen Distribuido

Para la creación de un volumen distribuido en Windows vamos a utilizar la máquina virtual con Windows 10 que tenemos preparada.

## Añadir los discos

Primero añadiremos los discos a la máquina Virtual con los siguientes parámetros:

2 Discos de Tamaño Fijo de 4GBs en formato VDI.

Nombres:

    * WindowsRAID01.vdi
    * WindowsRAID02.vdi

## Administración de discos

En el Administrador de discos, seleccionaremos la opción:

`Nuevo volumen distribuido`

Y en el asistente añadiremos los dos discos.

![Volumen Distribuido](CreacionDeRaidyVolumenes/CreacionVolumenDistribuido01.png)
\ 

Seleccionaremos que se formatee en NTFS y le asignaremos la letra `M`.

![Volumen Distribuido](CreacionDeRaidyVolumenes/CreacionVolumenDistribuido02.png)
\ 

A continuación veremos el progreso del formateo en el administrador de discos:

![Volumen Distribuido](CreacionDeRaidyVolumenes/CreacionVolumenDistribuido03.png)
\ 

Cuando haya finalizado se nos indicará mediante colores que discos pertenecen al mismo volumen.

![Volumen Distribuido](CreacionDeRaidyVolumenes/CreacionVolumenDistribuido04.png)
\ 

En el Equipo podremos ver la unidad, así como su capacidad que es la SUMA de ambos discos.

![Volumen Distribuido](CreacionDeRaidyVolumenes/CreacionVolumenDistribuido05.png)
\ 

## Ejercicio 1

Realiza un breve manual del proceso, describiendo qué estamos haciendo en cada paso. Adjunta capturas.

## Ejercicio 2

Describe 3 situaciones en las que esta solución puede ser útil en una empresa.