---
title: UD010 - Acceso al Dominio
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [ASIR, ISO, Dominios]
---

# Tarea: Unión al Dominio con Windows

En esta tarea veremos como unir una máquina con Windows 10  al dominio que hemos creado en las unidades anteriores.

## Requisitos de Infraestructura

Una vez tengamos el Servidor de Active Directory en Marcha (_server2019_), y en nuestra red NAT, tal y como configuramos en la unidad anterior, conectaremos la MV con Windows 10 a la red NAT, y realizaremos los pasos siguientes.

![Diagrama de Red](UnionAlDominio/Diagrama_RedNATWindows.png)
\ 

## Paso 1: DNS e IPs

Lo primero es que nuestra máquina cliente (Windows) sea capaz de encontrar el servidor de Active Directory tanto por nombre como por IP.

Para ello iremos a la configuración de la red y estableceremos la IP del servidor 2019 como DNS principal. 

![DNS](UnionAlDominio/JoinWindows10_00.png)

## Paso 2: Union al Dominio

Una vez tenemos el DNS configurado y nos hemos asegurado que podemos conectar con el servidor de nuestro dominio desde el cliente, lanzaremos el asistente de unión al dominio. 

Para ello, iremos a `Sistema` -> Y en la Configuración de nombre, grupo de trabajo y dominio, pulsaremos en `Cambiar Configuración`.

![UnionAlDominio](UnionAlDominio/JoinWindows10_01.png)
\

![UnionAlDominio](UnionAlDominio/JoinWindows10_02.png)
\

El asistente se encuentra en el botón `Id. de red...`.

![UnionAlDominio](UnionAlDominio/JoinWindows10_03.png)
\

Ahora seguiremos los pasos, contestando a las preguntas tal y como se muestra en las imágenes.

![UnionAlDominio](UnionAlDominio/JoinWindows10_04.png)
\

![UnionAlDominio](UnionAlDominio/JoinWindows10_05.png)
\

![UnionAlDominio](UnionAlDominio/JoinWindows10_06.png)
\

En este paso se nos pregunta por un usurio que tenga permisos para unir máquinas al dominio, en nuestro caso el `Administrador`. 

![UnionAlDominio](UnionAlDominio/JoinWindows10_07.png)
\

Debemos indicar cuál será el nombre de la máquina en el dominio, para identificarla fácilmente estableceremos DESKTOP-W10, pero podría ser:

* DespachoDirección
* Fotocopias
* CopiasDeSeguridad
* ...

![UnionAlDominio](UnionAlDominio/JoinWindows10_08.png)
\

Ahora nos pregunta de nuevo por el usuario y la contraseña del dominio.

![UnionAlDominio](UnionAlDominio/JoinWindows10_09.png)
\

![UnionAlDominio](UnionAlDominio/JoinWindows10_10.png)
\

Una vez unido al dominio, debemos reiniciar y el asistente nos lo indica.

![UnionAlDominio](UnionAlDominio/JoinWindows10_11.png)
\


Al reiniciar, Windows 10 realiza los cambios necesarios para permitir el login de los usuarios del dominio en la máquina que acabamos de iniciar.

![UnionAlDominio](UnionAlDominio/JoinWindows10_12.png)
\

![UnionAlDominio](UnionAlDominio/JoinWindows10_13.png)
\

![UnionAlDominio](UnionAlDominio/JoinWindows10_14.png)
\

# Ejercicio 1

Realiza los pasos descritos anteriormente y documenta el proceso, detallando las diferencias (si las hubiera) en la conectividad y los diferentes nombres de usuarios y dominios.

Si durante el proceso ocurre alguna incidencia, describela y documenta cómo la has resuelto para poder continuar el proceso con éxito.

# Ejercicio 2

**Creación de un usuario nuevo**

Crea un usuario en el Servidor 2019 (en el Active Directory) y comprueba que puedes iniciar sesión en el Windows 10 nada más crearlo.

