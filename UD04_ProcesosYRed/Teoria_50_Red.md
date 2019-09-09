---
title: UD04 - Administración de Procesos y Red
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [ASIR, ISO, Procesos, Red]
---

\newpage

# Configuración de Red Básica

Cuando instalamos un sistema operativo, si dispone de conexión de red, lo usual es que lo conectemos a la red para que el ordenador pueda interactuar con el resto de ordenadores de nuestro Sistema Informático.

Vamos a repasar algunos de los conceptos básicos de red que son necesarios para la puesta en marcha de un Sistema.

## Dirección MAC

La dirección MAC (o física) es la dirección que identifica a nuestro adaptador de red dentro del medio de conexión. Esta dirección viene asignada por el fabricante y no se puede modificar.

>**NOTA**: En realidad _si_ se puede, pero se trata de una mecanismo que se puede utilizar para hacerse pasar por otra máquina y suele suponer un fallo de seguridad en nuestro sistema.

La dirección MAC contiene una serie de 48 bits, separado en 6 bloques de dos caracteres _hexadecimales_ y que nos identifica de forma única:

`74:e6:e2:35:6a:a1`

## Dirección IP (v4)

Una dirección IP es un número que identifica de manera lógica y jerárquica, a la Interfaz de red que conecta el sistema a la Red. Este identificador será el que se utilice en la pila de protocolos TCP/IP y que forma la manera habitual de comunicación entre los diferentes equipos de una red.

Esta dirección puede cambiar y es administrable por nosotros, así que debemos conocer mecanismos para configurarla.

### IP Estática

Si no tenemos un servidor de DHCP en nuestra red, deberemos establecer esta configuración manualmente estableciendo los siguientes parámetros:

* Dirección.
* Máscara de Red.
* Puerta de enlace.
* Servidores de Nombres (DNS).

### IP Dinámica (DHCP)

En caso de que contemos con un servidor DHCP todos esos parámetros serán suministrados por el servidor DHCP y no deberemos preocuparnos (tan solo de configurar el DHCP Server, pero esto lo veremos en otro módulo).

A continuación veremos como se configura la red tanto en sistemas Windows como en sistemas GNU/LinuX.
