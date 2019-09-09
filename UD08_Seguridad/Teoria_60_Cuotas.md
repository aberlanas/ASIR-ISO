---
title: UD08 - Seguridad
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [ASIR, ISO, Seguridad]
---

# Cuotas de Disco

## ¿Qué es una cuota de disco?

Hemos visto a lo largo de la unidad que podemos establecer permisos que nos impidan escribir o modificar ficheros en determinadas carpetas y particiones del sistema. 

Las cuotas es mecanismo que nos permite _afinar_ el número de ficheros o el tamaño máximo de ficheros que un usuario o grupo puede escribir/crear en las carpetas gestionadas mediante cuotas.

Impedir que un usuario pueda crear un fichero de más de 2Gigas, o la creación de muchos ficheros en determinadas carpetas, pero permitiendo que pueda hacer uso de esa carpeta de manera controlada son configuraciones que gestionaremos mediante cuotas de disco.

## Tipos de cuota

Hay dos tipos de cuotas de disco, las cuotas _de uso_ o de _bloque_ y la de _archivo_ o _inodo_.

### Cuotas de bloque

Limitan la cantidad de espacio de disco que puede ser utilizado por un usuario o grupo

### Cuotas de archivo

Limita el número de archivos y directorios que un usuario puede crear.

## Cuotas duras y blandas

Como administradores, deberemos establecer un nivel de uso del disco de _advertencia_ (**cuota blanda**), en el que el sistema informará a los usuarios que se están acercando a su límite. Esto lo veremos con más detalle en las prácticas.

Es posible definir también un intervalo de gracia en el que se le permite a los usuarios sobrepasar el límite.

Si una cuota blanda es sobrepasada, el sistema enviará al usuario y al administrador un mensaje de advertencia.

Veremos todos estos conceptos en las prácticas.