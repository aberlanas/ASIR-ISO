---
title: UD09 - Administración del dominio
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [ASIR, ISO, Dominios]
---

# Conceptos previos

Ya hemos visto en temas anteriores como gestionar un sistema operativo cliente, vamos a estudiar ahora un sistema operativo servidor. En los ejemplos veremos Windows Server 2019 y OpenLDAP.

Windows Server es un sistema operativo servidor, preparado para gestionar una red de ordenadores mediante un sistema de dominios y un directorio activo que permite una administración centralizada.

Durante el tema veremos muchos conceptos nuevos, pero conviene repasar conceptos y ver como son alterados en el mundo de los servidores de directorio activo.

Las redes a las que pertenecen los sistemas informáticos son cada vez más complejas y necesitamos de herramientas que nos permitan realizar administración de manera centralizada.

Sin embargo, aunque lo más cómodo para los administradores es que todo estuviera centralizado, cada vez más los servidores se encuentran en máquinas diferentes, con sistemas operativos y recursos diversos. Y no podemos pretender que sean los usuarios los que recuerden _donde_ y _qué_ hay en cada uno de los nodos o servidores de nuestra red.

Este tipo de redes son muy complicadas (si no imposibles) de administrar mediante grupos de trabajo.

Para poder administrar este tipo de redes contaremos con una serie de herramientas como los dominios y las relaciones de confianza que nos permiten realizar una administración de los recursos.

Una LAN puede ofrecer los recursos de varias maneras, veremos un breve resumen:

- Servicios individuales.
- Grupos de trabajo.
- Servicios de directorio. (LDAP).

# Servicios individuales y Grupos de Trabajo

## Servicios Individuales

Los servicios individuales es el nombre que le vamos a dar a las pequeñas redes que ofrecen una serie de servicios tales como por ejemplo:

 * Impresora
 * Servicios de carpetas compartidas
  
Todo esto lo tenemos configurado en un único servidor central. Los usuarios **NO** comparten nada desde sus propios equipos y no hay nada en la red que no esté _organizado_ desde el servidor central.

Con este sistema no se requiere un sofisticado servicio de administración de recursos, dado que todos los recursos que se comparten están conectados directamente al servidor.

Sin embargo, agregar un segundo servidor puede complicar las cosas. El problema surge porque cada servidor individual mantiene su propia lista de usuarios y recursos, y debemos administrar el doble de usuarios y requisitos de seguridad.

Supongamos el siguiente ejemplo:

>Una pequeña empresa cuenta con un servidor llamado DeathStar que tiene una serie de impresoras que permite a los miembros del grupo de `Administración` imprimir a color, mientras que ofrece una carpeta compartida via `SAMBA` a los miembros del grupo de `Economia`.

Si ahora quisieramos añadir un nuevo servidor para aligerar la carga del Sistema. Nos encontrariamos con los siguientes problemas:

* Duplicación de los usuarios en ambos servidores.
* Comprobación de permisos.
* El usuario ha de saber donde se encuentra cada recurso.

Este modelo puede ser útil en empresas pequeñas, o donde los requisitos del sistema pueden ser cubiertos con este tipo de infraestructura.

## Grupos de Trabajo

Los **Grupos de Trabajo** son más informales y estan administrados por los usuarios que comparten sus propios recursos locales de cada sistema y no cuentan con ningún servidor.

Este tipo de redes se conocen como redes _peer to peer_, entre pares o entre iguales.

Las redes entre iguales se topan con dos problemas en las grandes organizaciones:

* Demasiados recursos para que los que los usuarios pueden acceder a su localización.
* Los usuarios no disponen de un método sencillo para otorgar acceso a determinados usuarios a recursos concretos.

Los grupos de trabajo hacen que el compartir recursos sea una operación muy simple, pero no tenemos ninguna lista (_directorio_) de los recursos que están siendo compartidos.

La adminstración no es eficiente, algunos de los problemas son:

* Si queremos restringir el acceso a determinados recursos podemos establecer contraseñas , pero las contraseñas éstas proliferan con rapidez. 
* Para cambiar una contraseña debe notificarse a todos los que utilizan dicho recurso (una tarea muy ingrata para los administradores de sistemas).
* La complejidad de un sistema de contraseñas aplicado en este tipo de sistemas es verdaderamente un quebradero de cabeza para el que los administra.
