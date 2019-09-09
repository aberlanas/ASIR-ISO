---
title: UD02 - Sistemas de Virtualización.
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [ASIR, ISO, Virtualización]
---

\newpage

# Exportación de Servicios Virtualizados

Ya conocemos el uso básico de VirtualBox, somos capaces de instalar un Sistema Operativo Virtualizado, prepararlo para realizar determinadas acciones, compartir el portapapeles, montar carpetas compartidas,...

Ahora vamos a ver como se exportan las máquinas virtuales de tal manera que todo lo que hemos configurado en un hipervisor pueda ser importado por otro/s. Esto lo utilizaremos muchas veces a lo largo del curso, ya que cuando tengamos determinadas configuraciones instaladas y preparadas en las MVs, las exportaremos para poder *desplegarlas* (poner en marcha de nuevo) en otros hipervisores, o en el nuestro mismo para realizar tareas de comprobación, configuración, etc.

\newpage

## Menú

VirtualBox nos ofrece un menú en *Archivo* que al hacer Click nos muestra las siguientes opciones:

![Menú VirtualBox](VirtualBox_OVA/VBoxOVA_000.png)
\

Seleccionaremos la opción: **Exportar servicio Virtualizado**

\newpage

## Exportar servicio virtualizado

Nos aparecerá una ventana donde se nos indicará que seleccionenmos cual/es de nuestras máquinas deseamos exportar:

![Selección de MV](VirtualBox_OVA/VBoxOVA_001.png)
\

\newpage

## Configuración de la exportación

Se nos permiten añadir datos a la exportación, tales como la licencia, el autor, etc. 

![Configuración de la exportación](VirtualBox_OVA/VBoxOVA_003.png)
\

## Progreso de la exportación

Una vez hayamos rellenado los datos, se lanzará un proceso que nos prepará un fichero **.ova** que contendrá nuestra máquina virtual, así como las configuraciones que se hayan aplicado. Este proceso puede resultar más o menos lentos depeniendo del dispositivo destino y del tamaño de la MV.

![Progreso de la exportación](VirtualBox_OVA/VBoxOVA_006.png)
\
