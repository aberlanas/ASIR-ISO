---
title: UD09 - Administración del dominio
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [ASIR, ISO, Dominios]
---

# Servicio de Directorio

Para tratar de solventar los problemas que hemos planteado con anterioridad tenemos varios mecanismos, uno de los más extendidos es el uso de Directorios.

Un directorio no es más que una lista que recoge todos los recursos que están disponibles para una red y organización, sin importar si se encuentra en el servidor o no. Estos recursos se organizan de manera lógica, permitiendo a los usuarios las búsquedas en el directorio acerca de los diferentes recursos de los que dispone.

`x500` es el servicio de directorio más famoso, y `LDAP` es el estándar que está basado en `x500`, que está preparado para trabajar sobre TCP/IP.

Para los usuarios el concepto de directorio es cómodo, ellos se conectan a la red y pueden listar los recursos disponibles sin importar donde se encuentran.

# LDAP

`LDAP` (_Lightweight Directory Access Protocol_, Protocolo Ligero de Acceso a Directorios) es un protocolo que permite el acceso a un servicio de directorio ordenado y distribuido para buscar diversa información en un entorno de red. 

`LDAP` se considera muchas veces como una base de datos a la que pueden realizarse consultas, aunque en realidad no es una base de datos como tal. Se encuentra especialmente optimizado para operaciones de lectura.

Después de ver todo esto , podemos definir que :

> Un **Directorio** es un conjunto de objetos con atributos organizados en una manera lógica y jerárquica.

`LDAP` se apoya en el DNS (Nombres de Dominio) para estructurar y organizar los diferentes recursos:

* Personas
* Unidades Organizativas (_OU_)
* Impresoras (_Printers_)
* Documentos
* Grupos de Personas (_Groups_)

Normalment almacenamos la información de autenticación (_usuario y contraseña_) y es utilizado para autenticarse aunque es posible almacenar otra información.

Existen diversas implementaciones y aplicaciones reales del protocolo LDAP como pueden ser:

* Active Directory (Directorio Activo)
* Novell Directory Services
* IPLanet
* OpenLDAP
* Red Hat DS

La implementaciones que vamos a estudiar en esta Unidad son la de _Active Directory_, utilizada por Microsoft, y la de _OpenLDAP_ que podremos
instalar en multitud de sistemas operativos y que cuenta con mucha aceptación.

## Ventajas de LDAP

Tal vez la mayor ventaja de LDAP es que permite acceder al directorio LDAP desde casi cualquier dispositivo, y desde muchas aplicaciones para 
empresa que cuenta con _bindings para LDAP_. 

Es también factible personalizar las aplicaciones internas de una empresa para añadirles soporte LDAP.

El protocolo LDAP es utilizable por distintas plataformas y basado en estándares, de ese modo las aplicaciones no necesitan 
preocuparse por el tipo de servidor en que se hospeda el directorio. De hecho, LDAP esta encontrando mucha más amplia aceptación 
a causa de ese estatus como estandard de Internet. 

Un servidor LDAP puede ser cualquiera de un numero de los servidores de directorio LDAP de código abierto o comercial.

La mayoría de los servidores LDAP son simples de instalar, fácilmente mantenibles, y fácilmente optimizables. Tal y como veremos en las prácticas.

Los servidores LDAP pueden replicar tanto algunos de sus datos como todos a través de métodos de envío o recepción,
lo que permite enviar datos a oficinas remotas, incrementar tu seguridad y demás.

La tecnología de replicación está incorporada y es fácil de configurar, pero esto se verá en otros módulos.

LDAP permite delegar con seguridad la lectura y modificación basada en autorizaciones según tus necesidades utilizando ACLs.

LDAP es particularmente utilizable para almacenar información que se desee leer desde muchas localizaciones, pero que no sea actualizada frecuentemente.

## Árbol de directorio LDAP

Los servidores de directorio LDAP almacenan sus datos jerárquicamente. Al igual que los árboles DNS descendientes o directorios de ficheros UNIX, 
así es la estructura de directorio LDAP. Como con los nombres de host en DNS, un registro Nombre Distinguido (Distinguished Name en ingles, DN en corto) de un directorio LDAP 
se lee desde su entrada individual, recursivamente a través del árbol, hasta el nivel más alto.

En los ejemplos que veremos trabajaremos con un dominio _base_ que denominaremos **iso.com**. 

Esta será nuestra raiz, de la que colgaremos las diferntes estructuras, unidades organizativas, utilizando una estructura jerárquica.

* _dc=iso, dc=com_

>Será el DN (_Distinguished Name_) base que utilizaremos.

## Cómo organizar los datos

Debajo de tu base de directorio, crearemos contenedores que separen lógicamente los datos.
Por razones históricas (_X.500_), la mayoría de los directorios configuran estas separaciones lógicas como entradas OU. 

`OU` vienen de _Unidades Organizacionales_ (Organizational Units, en inglés), que en X.500 eran utilizadas para indicar 
la organización funcional dentro de la empresa: ventas, finanzas, etcétera. 

Actualmente las implementaciones de LDAP han mantenido la convención del nombre `ou=`, pero separa las cosas por categorías 
amplias como `ou=gente` (`ou=people`), `ou=grupos` (`ou=groups`), `ou=dispositivos` (`ou=devices`), y demás. 

Los niveles inferiores de OUs son utilizados a veces para separar categorías por debajo. 

Por ejemplo, un árbol de directorio LDAP (sin incluir entradas individuales) podría parecerse a esto:

```shell
    dc=valencia,dc=iso, dc=com 
        ou=esbirros
            ou=tecnicos
            ou=transportistas
        ou=dispositivos
        ou=grupos

```

De esta manera un esbirro que crearamos dentro la `ou=tecnicos` tendría un DN como este:

`uid=esbirro01,ou=tecnicos,ou=esbirros,dc=iso,dc=com`

y un nombre en el formato DNS como este:

`esbirro01.tecnicos.esbirros.iso.com`

A lo largo de la unidad veremos como crear estas estructuras en los diferentes LDAPs. En la tarea de instalación y configuración del OpenLDAP se crea un usuario, y este al final tienen una serie de atributos que nos permiten trabajar con él.

![OpenLDAP](OpenLDAP/Slapd31.png)
\

Esta captura ha sido obtenida tras la ejecución del comando siguiente en la máquina en la que realizaremos la práctica.

`ldapsearch -x -h localhost -p 389 -b "dc=valencia,dc=iso,dc=com"`

Vamos ahora a describir los atributos más importantes que definen a este usuario en el LDAP:

* **dn** (Distinguised Name) consta del nombre único que define a este usuario y lo situa en una rama determinada de la estructura del LDAP. Contiene toda la ruta del LDAP.
* **cn** (Common Name) Nombre del Usuario + Apellidos
* **givenName** : Nombre del usuario
* **gidNumber** Grupo principal al que pertence el usuario.
* **homeDirectory** : _RUTA_ a la carpeta personal del usuario.
* **sn**: Apellidos del usuario
* **loginShell** : Intérprete de comandos por defecto para el usuario.
* **objectclass** : Es una colección de _atributos_ que se aplican al objeto (en este caso usuario). Por ejemplo, en este caso contamos que los atributos que se aplican son:
  * `inetOrgPerson` -> Persona de la organización
  * `posixAccount` -> Indica que es una cuenta de usuario que sigue el estándar POSIX.
  * `top` -> Todos los objetos del LDAP heredan de `top` (es la clase _padre_)
* **uidNumber** : Identificador numérico del usuario.
* **uid**: Identificador (_login_) del usuario.

Con todos estos datos establecidos, en esa base de datos remota a la que accedemos mediante LDAP, podemos realizar operaciones de usuario (login, asignar permisos, etc) con los usuarios y grupos de LDAP como si de usuarios locales se tratase. 

De esta manera tenemos una gestión _centralizada_ de los usuarios en nuestra red.

Veremos ahora los conceptos de Dominio, Bosque y la implementación de esos conceptos en sistemas Microsoft.
