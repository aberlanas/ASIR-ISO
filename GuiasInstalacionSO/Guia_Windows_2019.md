---
title: Guia Instalación Windows 2019
author: Angel Berlanas Vicente
header-includes: |
keywords: [ASIR, ISO, virtualizacion, Windows 2019]
abstract: Instalación de Windows 2019 Server en VirtualBox
---
\newpage

\tableofcontents

\newpage

# Instalación de Windows 2019
	
Vamos a ver todo el proceso de instalación de Windows 2019, así como el primer arranque y puesta en marcha del sistema.

# Imagen de instalación de Windows 2019

Utilizaremos para la realización de las tareas la versió de evaluación que podemos obtener mediante un registro 
en la página oficial de Microsoft.

[Windows 2019 - Versión de Evaluación](https://www.microsoft.com/en-us/evalcenter/evaluate-windows-server-2019)

Seleccionaremos la versión de Windows 2019 _Essentials_.



# Requisitos de Instalación
	
En la página web de microsoft nos indican algunas consideraciones que debemos tener en cuenta a la hora tanto de instalar como de actualizar desde versiones anteriores de Windows.

[Requisitos de Windows 2019 Server](https://docs.microsoft.com/en-us/windows-server/get-started/system-requirements)

Crearemos una máquina virtual que se ajuste a estos requisitos.

# Creación de la máquina Virtual

Crearemos ahora la máquina virtual de Windows en la que luego instalaremos utilizando la imágen que ya hemos descagado.


![Creacion MV](InstalacionWindows2019/Win2019_061211.png)
\ 


## Red 

Pondremos la red en Red NAT, tal y como vimos en las unidades anteriores

![Red](InstalacionWindows2019/Win2019_061247.png)
\ 


## Imágen ISO de Instalación

En el apartado de almacenamiento estableceremos que la imágen que nos hemos descargado de Windows 2019 es la que vamos a utilizar para arrancar la máquina.

Con estos pasos ya tendremos preparada la MV para que instalemos Windows 2019.

# Instalación de Windows 2019

Arrancaremos la máquina virtual, y comenzará el proceso de instalación. Cabe destacar que al igual que nos ocurrió con Windows 10 y Xubuntu, VirtualBox directamente sabe que no hay nada en el Disco Duro que tiene **conectada** la MV y nos lanza el proceso de instalación. Si esto lo hicieramos en una máquina Física, o cuando volvamos a arrancar una MV del VirtualBox que tiene discos duros instalados, aparece un mensaje que nos indica que debemos pulsar una tecla si queremos continuar el proceso de arranque desde el CD/DVD.

## Selección de idioma

Debemos seleccionar el idioma en el que se va a instalar Windows.

![Selección Idioma](InstalacionWindows2019/Win2019_061504.png)
\ 

## Instalación

En la siguiente seleccionaremos la opción de Instalar Ahora, pero si estuvieramos realizando tareas de rescate de Windows (arrancando con un DVD un ordenador que ya tuviera Windows Instalado), deberemos pulsar el botón que aparece en la parte inferior izquierda que nos permitirá *Reparar el equipo*.

## Activación de Windows

El siguiente paso es la activación de Windows, si tenemos una clave del Sistemas Operativo este es el momento de ponerla, en caso de que no la tengamos podemos seleccionar **No tengo clave de producto**. En caso de que pongamos una clave incorrecta, o que ya tengamos registrada en Microsoft, luego desde el panel de configuración del sistema podremos cambiarla o agregar una nueva.

![Activar Windows](InstalacionWindows2019/W2019_084717.png)
\ 


## Contrato de licencia de Usuario Final

Esto es el CLUF (*Contrato de Licencia de Usuario Final*) o en inglés *EULA* (*End User License Agreement*). Debemos leerlo al menos alguna vez...


## Particionado de discos

A continuación se nos muestran los discos y particiones que tenemos disponibles para la instalación de Windows. En este caso, al tener un disco totalmente vacio, basta con que seleccionemos el disco y pulsemos siguiente.

En esta ventana, si estamos haciendo una instalación dual debemos tener en cuenta que particiones están en uso, que tamñano tiene, etc.

Esto lo veremos más adelante en el módulo. 

![Particionado](InstalacionWindows2019/W2019_084856.png)
\ 

## Progreso de la instalación

A continuación nos aparecerá una ventana que nos va indicando los distintos pasos que debe realizar el proceso de instalación para completarse. 

Esta ventana es totalmente *desatendida*, y podemos ir haciendo otras cosas.

![Progreso](InstalacionWindows2019/W2019_084909.png)
\ 

A continuación el sistema se reiniciará.

## Primer arranque

Durante la instalación Windows se han copiado los ficheros desde el DVD/ISO al disco duro de nuestro equipo, sin embargo hay que configurar una serie de servicios y el usuario que será el administrador local del equipo. 

El proceso de configuración difiere del de los Sistemas Operativos que estamos más habituados, ya que se trata de un servidor. 

El nombre del usuario administrador en el caso de un Servidor Windows no puede ser decidido por el que lo instala, sino que viene predeterminado de *fábrica*. 

> Administrador

Podemos decidir la contraseña. En este caso, ya que la que habiamos preparado antes no sirve por motivos de falta de seguridad en la contraseña se propone la siguiente:

> Admin1s0

![Usuario Administrador](InstalacionWindows2019/W2019_104001.png)
\ 

Una vez establecido el usuario, al iniciar sesión se nos muestra el *Escritorio* como en Windows 10.

![Escritorio](InstalacionWindows2019/W2019_104154.png)
\ 




