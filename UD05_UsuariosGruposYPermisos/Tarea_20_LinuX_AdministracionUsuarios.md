---
title: UD05 - Usuarios, Grupos y Permisos
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [ASIR, ISO, Usuarios, Grupos, Permisos]
---

# Tarea: Administracion usuarios y grupos GNU/Linux

Vamos a crear un usuario de prueba para que veais cuales son los datos que se piden en la creación.

* `sudo adduser violin`

Ahora cuando nos pide el password de *sudo* el que nos está pidiendo es el password de nuestro propio usuario, (si este se encuentra en el grupo de *sudo*, esto lo veremos un poco más adelante). En caso de que fueramos el usuario *root* esta operación se puede hacer sin necesidad de usar *sudo* (**su**peruser **do**).

Cuando generamos un usuario en LinuX, por defecto genera un grupo que coincide en nombre con el usuario que generamos (si usamos adduser). Si buscamos en Internet veremos que hay muchas maneras de generar usuarios en LinuX, empezaremos con adduser que es una forma muy cómoda de generalos.

Ahora vamos a generar unos pocos usuarios más:

* viola
* violonchelo
* contrabajo
* fagot
* arpa
* trombon
* trompa

Si queremos organizarlos para luego más adelante otorgarles privilegios y permisos, permitirles acceder a recursos, etc. Es conveniente que los organizemos en *grupos*.

Los grupos que se plantean para la realización de las pruebas que se van a proponer a lo largo de la unidad son:

* cuerda
* metal
* instrumentos
* direccion
* orquesta

Se proponen los siguientes ejercicios:


## Ejercicio 1

Descargar el script [creador-usuarios](scripts/creador-usuarios.sh) y redactar debajo de cada bloque de comandos lo que ha ocurrido en el sistema tras su ejecución.

## Ejercicio 2

Modificar el mismo sript para que realice además de eso las siguientes acciones:

* Añadir los usuarios :

  * viola
  * violonchelo
  * contrabajo
  * arpa
  * trombon
  * trompa

* Añadir los grupos:

  * percusion
  * cuerda_percutida

* Establecer los usuarios en los grupos siguientes

  | Usuarios | Cuerda | Metal |  Cuerda_percutida | Direccion | Orquesta | Direccion|
  | ----- |:--:|:-:|:-:|:-:|:-:|:-:|
  | viola |  x | - | - | - | x | - |
  | violonchelo |  x | - | - | - | x | - |
  | contrabajo |  x | - | x | - | x | - |
  | arpa |  x | - | x | - | x | - |
  | trombon | - | x | - | - | x | x |
  | trompa |  - | x | - | - | x | - |
