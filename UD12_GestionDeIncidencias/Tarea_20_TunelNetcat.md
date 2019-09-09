---
title: UD12 - Gestión de Incidencias
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [ASIR, ISO, Gestión de Incidencias]
---

# Tarea: Tunel SSH + Netcat

Como ejercicio práctico y para comprobar que se han comprendido los conceptos se propone a los alumnos realizar una práctica extra.

Esta práctica tiene el propósito de crear un túnel seguro entre un cliente y un servidor para un servicio que no va encriptado.

## Ejercicio 1

Realizar una conexión netcat entre un servidor y un cliente usando el puerto 10001. Comprobar que funciona el servicio netcat.

## Ejercicio 2 

Configurar el servidor ssh para que permita ciertas cosas:

* Usaremos el puerto 1122.
* Número máximo de intentos 2
* EL tiempo máximo para loguearse será de 20 segundos
* Que muestre un mensaje de Bienvenida con vuestro nombre.

Comprobar que funciona el servicio ssh.
   
* Crear un túnel ssh. Usaremos el puerto 9999 para crear el túnel y poder ejecutar netcat a través del túnel. Le pondremos la opción –N para que no muestre nada y se quede a la espera.
* Con el túnel creado abrimos el netcat en el servidor para que escuche a través del puerto comentado en el punto 1.
* Comprobamos el cliente netcat enviando un mensaje o un fichero.
  
Avisad al profesor cuando acabeis.