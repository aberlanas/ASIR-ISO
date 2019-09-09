---
title: UD09 - Administración del dominio
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [ASIR, ISO, Dominios]
---

# Dominios

Un dominio es el conjunto de computadoras conectadas en una red informática que confían a uno de los equipos de dicha red, la administración de los usuarios y los privilegios que cada uno de los usuarios tiene en dicha red.

Para que esto funcione de manera correcta necesitamos varios servicios funcionando de manera _coordinada_. 

* Necesitaremos un servicio de _directorio_, donde almacenaremos información acerca de los usuarios, grupos, permisos, etc. de nuestro dominio (**LDAP**). 
* Un servicio de resolución de nombres de máquinas, usuarios, que nos permita trabajar mediante nomenclatura _de Internet_. (**DNS**).
* Un servicio validación de usuarios de manera remota, que nos asegure de que los usuarios son _quienes dicen ser_. (**Kerberos**).
* Un sistema de compartición de recursos en red, en las prácticas veremos **SMB** (Server Message Block), pero podríamos utilizar otro.
* Un sistema de sincronización de la hora, que nos asegure que todas las máquinas de nuestro dominio están en la misma hora (requisito muy importante para Kerberos).(**NTP**).

Deberemos configurar toda esta infraestructura para el correcto funcionamiento de un dominio.

Veremos en las prácticas cómo se configuran, a lo largo de esta unidad y la siguiente.

Haciendo un breve resumen de los pasos que veremos:

Estableceremos un ordenador como controlador del dominio, donde crearemos cuentas _globales_ que podrán ser utilizadas en todos los ordenadores que configuremos en la red.

Las cuentas locales de los ordenadores seguirán en cada una de las máquinas.

Debemos configurar tanto el ordenador servidor como los clientes. Uno para que sea el controlador y los clientes para que tenga _confianza_ y sean dominados por el servidor.

Los servidores, dentro del dominio, anuncian sus servicios a los usuarios. Los usuarios obtienen acceso sin importar que ordenador del dominio está _ofreciendo_ el servicio.

Si la red se vuelve demasiado amplia y aparecen varios dominios, podemos establecer relaciones de confianza (_trust_) entre ellos. De tal manera que un usuario solo requerirá iniciar sesión en uno de ellos y los demás dominios confiarán en el dominio de conexión.

## Estructura

Cada dominio contiene una serie de máquinas clientes, unos recursos y al menos un servidor que domina a los equipos clientes, este servidor se conoce como Controlador de Dominio (_Domain Controler, DC_).

Podemos agrupar varios dominios formando estructuras de dominios, donde cada uno de estos dominios cuenta con su propio controlador de dominio. Esta agrupación de dominios se realiza de forma anidada, al igual que hemos visto en la estructura de directorios. Cada dominio puede tener dominios padres y dominios hijos, y todos los dominios tienen un dominio padre menos el dominio raíz, que es el primero de todos.

Esta estructura de dominios anidados se conoce como **árbol**.

# Bosque

A lo largo de las prácticas trabajaremos con diferentes dominios, en Windows veremos el dominio directo de _iso.com_, mientras que en GNU/LinuX veremos el subdominio de _valencia.iso.com_. Las relaciones de confianza y la administración avanzada del dominio se verán en mayor profundidad en el módulo de ASO (Administración de Sistemas Operativos) perteneciente al segundo curso del Ciclo Formativo.

![Bosque](AD2016/ISO_AD_Arboles.png)
\ 

Vemos como el dominio raíz tiene dos dominios hijos (Valencia y Castellón), y uno de ellos tiene a su vez dos hijos más (Utiel y Torrent). Al hablar de árboles, podemos decir que el dominio raíz tiene dos ramas, y una de esas ramas tiene a su vez dos ramas más. Es posible crear una estructura que cuente con más de un árbol, estas estructuras de carácter superior al árbol se conocen como bosque.

El modelo de bosque permite a las organizaciones que no forman un espacio de nombres contiguo, o jerarquizado, mantener la continuidad de toda la organización en su estructura de dominios agregados.
