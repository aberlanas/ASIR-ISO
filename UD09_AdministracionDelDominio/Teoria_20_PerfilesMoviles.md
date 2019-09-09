---
title: UD09 - Administración del dominio
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [ASIR, ISO, Dominios]
---

# Perfiles Móviles

Una de las características más utilizadas en los dominios es la capacidad que tienen de facilitar
el acceso a los diferentes recursos de los que dispone el sistema informático, al mismo tiempo
que mantienen un control y seguridad sobre los mismos. En un dominio es más sencillo
efectuar el seguimiento de las contraseñas y permisos, ya que lo tenemos todo centralizado.

Esta base de datos centralizada que contiene la información de los usuarios y equipos del dominio,
se replica de manera automática entre los diferentes controladores del dominio (en caso de que hubiera
más de uno).

Cuando hablamos de usuarios en red, los perfiles móviles es la capacidad que tiene el sistema informático
de permitir que los usuarios del mismo inicien sesión en diferentes equipos y sus datos, aplicaciones y configuraciones
se mantengan sincronizados.

Existen múltiples posibilidades para conseguir esta característica, así como diferentes _grados_ de implementación.

## Sincronización de usuarios y grupos

Ya sea mediante los servicios de _LDAP_ o mediante otros mecanismos, una de las características esenciales es la
unificación de los usuarios y los grupos de todos los equipos del sistema bajo un mismo servidor, y todas las máquinas
del dominio efectuarán consultas a este para validad y obtener los usuarios y grupos que pueden trabajar en el dominio.

En las prácticas veremos algunas configuraciones básicas.

## Sincronización de ficheros

Para que los datos que consideremos importantes estén siempre disponibles, sin importar desde qué máquina
del dominio inicie sesión el usuario necesitamos _hacer accesibles_ las carpetas que contienen los datos 
a las máquinas que componen nuestra red. Esto puede realizarse mediante diferentes tecnologías y protocolos.

## Sincronización de configuraciones

Aplicando políticas de grupo y scripts de inicio de sesión en las máquinas donde inician sesión los usuarios,
podemos conseguir que las configuraciones de los usuarios se apliquen en todas las máquinas del dominio.

## Sincronización de aplicaciones

Al igual que las configuraciones, también necesitaremos que determinado software se instale o desinstale, dependiendo
del usuario que inicia sesión en el equipo.

# Redirección de carpetas

En unidades anteriores hemos visto que las carpetas de trabajo de los usuarios están situadas en rutas _locales_ de los sistemas
operativos:

* `C:\Users\`
* `/home/`

Estas carpetas por defecto pertenecen a la instalación local del sistema, no se encuentran en unidades compartidas de la red,
por lo que su acceso ha de ser local. Para una mejor gestión de los perfiles móviles dentro de un dominio, es necesario que algunas
carpetas estén redirigidas a otras ubicaciones, que no siempre serán las mismas, ya que dependerán de la infraestructura que estemos
configurando.

Si estas carpetas son redigidas a una unidad compartida en la red, los usuarios tendrán disponibles sus datos y configuraciones desde
cualquier máquina del dominio, ya que sus datos estarán sincronizados y disponibles en todas las máquinas.

En las prácticas veremos como redirigir las carpetas personales de los usuarios a una unidad compartida en la red.

# Ventajas de los perfiles móviles

Como ya hemos visto en unidades anteriores, uno de los activos más importantes de una empresa son los datos con los que trabaja.

Si configuramos los equipos para que accedan a los datos de manera centralizada, ya sea mediante la redirección completa de su carpeta 
de usuario o tan solo algunas carpetas elegidas para tal propósito, la política de copias de seguridad se simplifica mucho, ya que tan 
solo deberemos hacerla en el servidor que está compartiendo esos datos. No solo esto, sino que si además contamos con sistemas RAID, tal 
y como hemos visto en unidades anteriores, nuestra capacidad de respuesta ante desastres es mucho mayor.

