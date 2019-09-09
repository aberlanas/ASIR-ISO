---
title: UD06 - Sistemas de Ficheros
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [ASIR, ISO, Sistemas de ficheros]
contenidos: [C4.3]
---

# Tarea: Creación de enlaces en GNU/LinuX

Todos estos ejercicios hay que realizarlos en la máquina virtual de Xubuntu.

![Xubuntu](Enlaces/xubuntu_logo_black.png)
\ 

## Ejercicio 1

Crear la siguiente estructura de carpetas y ficheros en el sistema (Hacerlo desde `/`):

![Enlaces](Enlaces/enlaces_01.png)
\

Las rutas han de quedar así:

Ej:

```shell
/asir/iso/linux/UsuariosYGrupos.txt
```

TODOS LOS FICHEROS Y DIRECTORIOS HAN DE PERTENECER AL USUARIO : `adminiso`

## Ejercicio 2
Crear un fichero con espacios en el nombre en la carpeta fhw que se llame:

`Temario de FHW.pdf` ← ¡Atención a los espacios!

## Ejercicio3

Crear un enlace simbólico en la carpeta Windows  que apunte al fichero `UsuariosYGrupos.txt` cuya ruta se absoluta y tenga el nombre: `UsuariosYGrupos.lnk`

## Ejercicio 4

Crear un enlace simbólico en la carpeta Linux que apunte al fichero `Temario de FHW.pdf` cuya ruta sea relativa y tenga el nombre `FHW.lnk`

## Ejercicio 5

Crear un enlace simbólico a la carpeta personal del usuario alumno (/home/alumno) dentro de la carpeta fhw cuyo nombre sea: `CarpetaPersonal`.

## Ejercicio 6

Crear un enlace duro al fichero `BASH.pdf` en la carpeta windows cuyo nombre sea: `POWERSHELL.pdf`

## Ejercicio 7

Crear un enlace simbólico al fichero `/etc/apt/sources.list` en la carpeta linux cuyo nombre sea: `sources`.

## Ejercicio 8

Crear un enlace simbólico al fichero `sources` creado en el ejercicio anterior en la carpeta `windows`, cuyo nombre sea: `fuentes`.

## Ejercicio 9

Crea un carpeta en `/asir/` que se llame `resultados`.

## Ejercicio 10

Crea en la carpeta `resultados` el listado de los ficheros que son enlaces que podemos encontrar en la carpeta `asir` con el nombre `enlaces.txt`.

## Ejercicio 11

Crea en la carpeta `resultados`  el listado de los ficheros y directorios que están en asir comienzan por la letra : `U` con el nombre `ficheros_U.txt`.

## Ejercicio 12

Crea en la carpeta `resultados` el listado de los directorios que están en asir con el nombre: `directorios_en_asir.txt`
