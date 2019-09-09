---
title: UD12 - Gestión de Incidencias
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [ASIR, ISO, Gestión de Incidencias]
---

# Instalaciones automáticas

Hemos visto ya instalaciones _normales_ y mediante clonación. Veremos ahora instalaciones mediante ficheros de respuestas. En esos ficheros introduciremos todas las _respuestas a las preguntas_ que sabemos que el sistema nos hará durante el proceso de instalación. De tal manera que el proceso de instalación no es tan _interactivo_ y se transforma en algo mucho más automático. Estos ficheros han de estar disponibles para el medio de instalación, de tal manera que los puedan consultar.

## Ficheros de respuestas

Los ficheros de respuestas podemos generarlos a partir de un sistema instalado o utilizando los ejemplos que nos ofrecen en las distintas páginas oficiales de las distribuciones.

En el caso de los sistemas windows, estos ficheros se generan a posteriori de las instalaciones utilizando herramientas como `Sysprep`.

Hemos visto como se configuran las aplicaciones en los sistemas GNU/LinuX y como se guardan la respuestas que se han dado a las preguntas que transcurren durante la instalación del software.

En concreto en los sistemas basados en _Debian_, la base de datos es `debconf`.  Podemos obtener esos ficheros de respuestas para nuestra instalación desatendida, o simplemente para posibles actualizaciones.

La herramienta  que os permite obtener las respuestas es:

```shell
debconf-get-selections
```

## Preseed

Ejemplo de preseed:

A continuación se muestra un ejemplo preseed que se puede utilizar para la instalación desatendida.

```shell
#### Contents of the preconfiguration file (for stretch)
### Localicacion
d-i debian-installer/locale string es_ES

# Keyboard selection.
d-i console-setup/ask_detect boolean false
d-i keyboard-configuration/xkb-keymap select es

# Red
d-i netcfg/choose_interface select auto

# Hostname y domain
d-i netcfg/get_hostname string adminiso-linux
d-i netcfg/get_domain string adminiso

# Wep
d-i netcfg/wireless_wep string

# Seleccion mirror
d-i mirror/country string manual
d-i mirror/http/hostname string archive.ubuntu.com
d-i mirror/http/directory string /ubuntu
d-i mirror/http/proxy string

# Creacion usuario 
# To create a normal user account.
d-i passwd/user-fullname string Admin de ISO
d-i passwd/username string adminiso
# Normal user's password, either in clear text
d-i passwd/user-password password admin1s0
d-i passwd/user-password-again password admin1s0

d-i user-setup/allow-password-weak boolean true

# The user account will be added to some standard initial groups. To
# override that, use this.
d-i passwd/user-default-groups string audio adm sudo cdrom video

# Set to true if you want to encrypt the first user's home directory.
d-i user-setup/encrypt-home boolean false

### Clock and time zone setup
# Controls whether or not the hardware clock is set to UTC.
d-i clock-setup/utc boolean true

# You may set this to any valid setting for $TZ; see the contents of
# /usr/share/zoneinfo/ for valid values.
d-i time/zone string Europe/Madrid

# Controls whether to use NTP to set the clock during the install
d-i clock-setup/ntp boolean true

# The presently available methods are:
# - regular: use the usual partition types for your architecture
# - lvm:     use LVM to partition the disk
# - crypto:  use LVM within an encrypted partition
d-i partman-auto/method string lvm

# If one of the disks that are going to be automatically partitioned
# contains an old LVM configuration, the user will normally receive a
# warning. This can be preseeded away...
d-i partman-lvm/device_remove_lvm boolean true
# The same applies to pre-existing software RAID array:
d-i partman-md/device_remove_md boolean true
# And the same goes for the confirmation to write the lvm partitions.
d-i partman-lvm/confirm boolean true
d-i partman-lvm/confirm_nooverwrite boolean true

# For LVM partitioning, you can select how much of the volume group to use
# for logical volumes.
#d-i partman-auto-lvm/guided_size string max
#d-i partman-auto-lvm/guided_size string 10GB
#d-i partman-auto-lvm/guided_size string 50%

# You can choose one of the three predefined partitioning recipes:
# - atomic: all files in one partition
# - home:   separate /home partition
# - multi:  separate /home, /var, and /tmp partitions
d-i partman-auto/choose_recipe select atomic

#

# This makes partman automatically partition without confirmation, provided
# that you told it what to do using one of the methods above.
d-i partman-partitioning/confirm_write_new_label boolean true
d-i partman/choose_partition select finish
d-i partman/confirm boolean true
d-i partman/confirm_nooverwrite boolean true


d-i partman-md/confirm boolean true
d-i partman-partitioning/confirm_write_new_label boolean true
d-i partman/choose_partition select finish
d-i partman/confirm boolean true
d-i partman/confirm_nooverwrite boolean true



### Package selection
tasksel tasksel/first multiselect xubuntu-desktop

# Individual additional packages to install
d-i pkgsel/include string openssh-server build-essential tree

# Language pack selection
d-i pkgsel/language-packs multiselect es, en

# This is fairly safe to set, it makes grub install automatically to the MBR
# if no other operating system is detected on the machine.
d-i grub-installer/only_debian boolean true

# This one makes grub-installer install to the MBR if it also finds some other
# OS, which is less safe as it might not be able to boot that other OS.
d-i grub-installer/with_other_os boolean true

# Avoid that last message about the install being complete.
d-i finish-install/reboot_in_progress note

```

[Guia de Preseed](https://help.ubuntu.com/lts/installation-guide/i386/apbs04.html)

## Usar el preseed

Para indicarle a la imagen de instalación que tiene que utilizar el fichero de respuestas, utilizaremos el menú de arranque de la imagen de instalación.

Pulsaremos `TAB` para editar las opciones y le indicaremos los siguientes parámetros **antes** del argumento del `initrd`.

```shell
auto=true priority=critical url=http://aberlanas.net/preseed/bionic.preseed
```

Sustituyendo la URL por la que nos interese. Pulsaremos `INTRO` y el programa de instalación descargará del servidor el Preseed y cargará las respuestas para las posibles preguntas.

En la prácticas realizaremos modificaciones sobre este fichero de respuestas para adaptarlo a nuestras necesidades.
