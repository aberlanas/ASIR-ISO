---
title: UD06 - Sistemas de Ficheros
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [ASIR, ISO, Sistemas de ficheros]
---

\newpage

# Estructura de ficheros en GNU/Linux

En los sistemas GNU/LinuX la raíz del árbol de directorios es `/`, a partir de la cual se estructura todas las carpetas y ficheros del sistema.

Veremos a continuación las carpetas más importantes y por último un pequeño esquema que resume la mayoría de las carpetas.

>**NOTA**: Hay que tener en cuenta que al tener múltiples distribuciones, el uso de las carpetas varía, aunque podemos basarnos en el estándar de FreeDesktop para el uso de las carpetas.

[FreeDesktop - FileHierarchy](https://www.freedesktop.org/software/systemd/man/file-hierarchy.html)

## Estructura General

### /

La raíz del sistema de ficheros, normalmente en modo "lectura/escritura", pero no es necesario. No se comparte con otros sistemas.

### /boot/

Partición que contiene los ficheros de arranque del sistema. En sistemas EFI, podemos encontrar aquí el ejecutable que nos permite lanzar el Kernel y el sistema. Si nos encontramos en EFI puede estar indicada como (ESP: _EFI System Partition_ )

### /etc/

Carpeta que contiene la configuración especifica del sistema, no la genérica, se trata del directorio donde configuraremos servicios, aplicaciones, etc. para todos los usuarios del equipo.

### /home/

Carpetas personales de los usuarios (distintos de `root`) que hay en el equipo. Aquí encontraremos las _Carpetas Personales_, los ficheros de los usuarios, sus datos, las configuraciones específicas de cada usuario para los programas, etc.

### /root/

La carpeta personal del usuario `root`. La única que no se encuentra en `/home/`. 

### /srv/

Carpeta que debe contener aquella información que la máquina _ofrece_ a otras máquinas, ya sea mediante servicios como el del apache, como ficheros a través del NFS.

### /tmp/

Carpeta temporal, se borra en cada arranque, y dispone de unos permisos especiales (los veremos más adelante.)

----

## Datos de ejecución

### /run/

Lugar donde se almacenan datos volátiles de diferentes procesos, que se borran en cada arranque.

## Recursos suministrados por la distro

### /usr/

Carpeta que contiene todo lo que el distribuidor (_vendor_) suministra ya sea mediante paquetería o en la instalación.

### /usr/bin/

Binarios ejecutables que deben estar en el `$PATH`.

### /usr/lib/

Librerias y utilidades necesarias para otros programas, pero que no deben ser lanzados por el usuario _directamente._

### /usr/share/

Recursos, no dependientes de arquitectura, para los programas, tales como: imágenes, documentación,...

![Cada cosa en su sitio](SistemasFicherosLinuX/tiraecol-55.png)

----

## Datos de ejecución persistentes

### /var/

Datos de ejecución, pero persistentes, bases de datos, actualizaciones, etc. Algunas distros suministran datos en esta carpeta, pero las aplicaciones han de ser capaces de re-generar esta información.

### /var/cache/

Cache persistente que pertenece al sistema. Puede ser borrada sin que el sistema se vea afectado más allá del tiempo necesario para regenerar está cache.

### /var/lib/

Datos persistentes del Sistema.

### /var/log/

Archivos de registro del sistema, permanente. Una de las carpetas que más visitaremos en busca de los errores de configuración y de demonios.

### /var/spool/

Datos persistentes de colas, tales como las de impresión o correo.

----

## Ficheros virtuales del Kernel (API)

### /dev/

Se trata de la carpeta que contiene todos los dispositivos hardware. Está montada con un sistema de ficheros especial: el `devtmpfs`. Esta carpeta es poblada por el kernel y por el el `demonio` de `systemd-udevd`, y no debería ser escrita o modificada por otros componetes (aunque veremos en las prácticas que a veces es necesario intervenir).

### /proc/

Se trata de una carpeta que ofrece el kernel para poder interactuar con los procesos y proveer funcionalidad.
Contiene la información acerca de los diferentes procesos que el SO administra.

### /sys/

Otra de las carpetas de comunicación con el kernel, donde podemos obtener información acerca del núcleo.

----

## Enlaces de compatibilidad

### /bin/, /sbin/, /usr/sbin/

Se trata de enlaces que apuntan a `/usr/bin/` para ofrecer compatibilidad con aplicaciones antiguas.

### /lib/

Lo mismo que el caso anterior pero sobre libreria que apuntan a : `/usr/lib`

### /var/run/

Otro de los ajustes de compatibilidad, en este caso a `/run/`.

----

## Carpeta /home/

Todas las carpetas que hemos visto anteriormente hacen referencia a elementos globales del sistema, sin embargo cada usuario puede personalizar las aplicaciones y configurar su comportamiento para adaptarlo a sus necesidades.

Esas configuraciones y datos personales se encuentran en una serie de directorios que vamos a repasar aquí.

### `~/.cache/`

Datos persistentes de la cache del usuario.

### ~/.config/

Configuración y estado de las aplicaciones del usuario.

### ~/.local/bin/

Directorio propio del usuario que contiene ejecutables que pueden ser lanzados por el usuario.

### ~/.local/share/

Al igual que `/usr/share/`, contiene recursos como imágenes y documentos que están compartidos entre varias aplicaciones.

En las tareas iremos ampliando ideas y conceptos acerca de las carpetas que hemos visto.
