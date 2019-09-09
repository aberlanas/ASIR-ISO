---
title: UD04 - Administración de Procesos y Red
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [ASIR, ISO, Procesos, Red]
---

\newpage

# Procesos

Además de los Usuarios, Grupos y los Permisos, una de las tareas de las que tiene que ocuparse el Sistema Operativo es la gestión de los procesos.

Como administradores debemos saber manejar también los procesos, como se ponen en marcha y las herramientas de las que disponemos para interactuar con ellos.

## ¿Qué es un Proceso? 

Según el departamento de Sistemas Operativos de la UPV: "Un  proceso  es  programa en ejecución". Desde el punto de vista del SO, un proceso es un objeto más que hay que gestionar y al cual hay que dar servicio.

Cuando un programa se pone en ejecución, el sistema operativo comprueba los permisos de los que dispone y se le asigna espacio en la memoria RAM y tiempo de computación, es decir, cierta prioridad en la CPU, para que el proceso pueda acceder a sus instrucciones y realizar la tarea que tiene programada.

La gestión de como funcionan internamente los procesos es muy complicada, ya que debemos tener en cuenta la carga del sistema, el planificador de procesos, los accesos a disco y periféricos, etc. 

Sin embargo, debemos saber como obtener información del sistema operativo acerca de un determinado proceso, ya sea para comprobar que todo está bien, para hacer una auditoría de seguridad, comprobar su consumo de red, etc.
