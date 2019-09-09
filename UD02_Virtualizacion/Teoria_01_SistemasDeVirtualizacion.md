---
title: UD02 - Sistemas de Virtualización.
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [ASIR, ISO, Virtualización]
---

\newpage

\tableofcontents

\newpage

# Sistemas de Virtualización

## ¿Qué es un Sistema de Virtualización?

En informática un **sistema de virtualización** se refiere a la creación a través de *Software* de un recurso tecnológico, este puede ser un ordenador físico completo, u otros recursos de *Hardware*.

Nos ofrece una *abstracción* de los recursos *hardware* de un ordenador a través de lo que llamaremos *Hypervisor*.

Los sistemas virtualizados han sido un gran avance en las tecnologías de la información, las ventajas de estos sistemas en cuanto a aprovechamiento de recursos han hecho que sean una opción cada vez más usada en los sistemas de información incluidos los servidores.

Ahora es posible hacer prácticas que antes eran inviables de llevar a cabo en una clase ordinaria por la insuficiencia de recursos hardware, o por los problemas derivados de realizarlas.

Por poner algún ejemplo, cuando se estudia la interconexión de ordenadores en red, antes era necesaria la coordinación de un mínimo de dos ordenadores con sus respectivos alumnos para hacer las pruebas, mientras que ahora se pueden hacer usando una sola máquina anfitriona y otra virtualizada. Otro claro ejemplo, es la instalación de varios sistemas operativos en la misma máquina sin peligro de que un mal paso modifique el arranque, o altere accidentalmente particiones de alguno de los sistemas que se pretendía hacer “convivir” en el mismo sistema.

En el modelo de máquinas virtuales se crea un sistema *cliente/servidor* donde cada cliente actuará como un sistema virtual del hardware sobre el que está implementado. Las ventajas de este sistema frente a otros para realizar las pruebas este modelo no modifica en ningún momento el sistema sobre el que se instala. En este modelo existe un administrador de los recursos hardware llamado **Hypervisor**, o monitor de máquina virtual que será el encargado de hacer las peticiones a la CPU y administrar los privilegios en dichas peticiones. En nuestro caso *VirtualBox* será este **Hypervisor**

Una máquina virtual es un contenedor de software perfectamente aislado que puede ejecutar sus propios sistemas operativos y aplicaciones como si fuera un ordenador físico. La máquina virtual se comporta exactamente igual que un ordenador físico y contiene su propia CPU virtual, memoria, disco duro, tarjeta de interfaz de red...

A todos los efectos una máquina virtual se considera como una máquina con su sistema operativo propio incluso los otros ordenadores de la red así lo *verán*. Aunque no debemos olvidar que en realidad todo está basado en software. Esto nos reporta una serie de ventajas y algún que otro inconveniente.

## Guest y Host

A medida que vayamos leyendo documentación veremos muchas maneras de referirse a las máquinas virtualizadas y a los **hypervisores**. Una de las nomenclaturas que más puede aparecer son las palabras *Guest y Host* :

* **Guest** (invitado) es la máquina virtualizada, la que vive *"dentro"* de la máquina real.
* **Host** (anfitrión) es la máquina real, la que dispone de hardware real y virtualiza las otras.

\newpage

## Ventajas de la Virtualización

La principal ventaja de la virtualización es poder tener varios sistemas dentro de un solo hardware físico como si de varias máquinas con sus respectivos componentes hardware se tratase, siendo independientes los unos de los otros.

Otras de las ventajas son:

* Los usuarios verán los recursos que usan como si fueran dedicados.
* Una administración centralizada.
* Facilita hacer recursos más homogéneos llegando a estandarizarlos.
* Soporta trasladar sistemas y configuraciones de un sistema a otro, incluso en “caliente”.
* Aumenta la flexibilidad y aprovechamiento de recursos y consumo eléctrico.
* Mejora la tolerancia a fallos, si cae un sistema los otros siguen inalterados.
* Facilita las copias de seguridad.

## Desventajas de la Virtualización

La principal desventaja de la virtualización, es que lógicamente el sistema principal que soportara las máquinas virtuales, debe disponer de una mayor cantidad y potencia de recursos a mayor número de sistemas queramos tener virtualizados en él. Los componentes principales que determinarán el número de máquinas virtuales que se podrán soportar sobre un hardware y el rendimiento de cada una de ellas son: la cantidad y velocidad de memoria RAM, la potencia del procesador y la velocidad de lectura, acceso y transferencia del disco duro, aunque hay más factores que determinarán el rendimiento final del sistema.

Otra de las desventajas es que en ocasiones aparecen problemas en la compatibilidad con el hardware virtualizado, aunque en las últimas versiones de los programas de virtualización estos problemas no se presentan casi nunca.

También podríamos contar como desventaja que todavía nos es difícil configurar ciertos recursos en máquinas virtualizadas, en ocasiones por entendimiento y otras por limitaciones del propio software de virtualización.

\newpage

## Tipos de Virtualización

Existen dos grandes grupos de Virtualizadores, o **Hypervisores**:

### Para-Virtualización

Tipo 1: También denominado nativo o **bare metal** (sobre el metal *desnudo*), es software que se ejecuta directamente sobre el hardware, para ofrecer la funcionalidad descrita. En este caso el hardware esta compartido entre las maquinas virtuales y el Sistema Operativo que aloja al **Hypervisor**, de esta manera los recursos pueden ser utilizados de manera más adecuada. Ya que cada uno de los sistemas instalados gestiona los recursos *físicos*, permite un mejor aprovechamiento de los mismos.

![Virtualizadores Bare Metal](SistemasDeVirtualizacion/Hipervisor_PrimerNivel.svg.png)
\

Ejemplos de esta tecnologia:

* VMwware ESXi Free (gratis)
* VMware ESX (de pago)
* Xen (libre)
* Microsoft Hyper-V Server (gratis)
* Proxmox (gratis/de pago)

#### Paravirtualización y componentes HW

En el caso de paravirtualización de componentes hardware  puedes decir que bastantes sistemas operativos llevan el controlador para este tipo de hardware (Linux, etc) pero por lo general Windows no y habrá que buscar el controlador para descargarlo y instalarlo dentro del invitado (Win).

Puede poner el ejemplo de la paravirtualización de las tarjetas de red y el enlace de donde descargar el driver virtio

\newpage

### Virtualización completa

Tipo 2: También llamado **completa**, ya que la virtualización virtualiza todo el hardware. Requiere de mayores recursos para realizar la virtualización, ya que el sistema operativo de la máquina anfitriona debe gestionar todos los recursos, tanto los discos duros, la memoria RAM, el microprocesador, etc.

![Virtualizadores Completos](SistemasDeVirtualizacion/Hipervisor_SegundoNivel.svg.png)
\

Ejemplos :

* VirtualBox (gratis)
* VirtualBox OSE (libre)
* VMware Workstation (de pago)
* VMware Server (gratis)
* QEMU (libre)

## Enlaces

* [Conceptos Básicos](https://www.youtube.com/watch?v=iSvjBc-JwPs)
