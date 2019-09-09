---
title: Guia Configuración Windows 2019
author: Angel Berlanas Vicente
header-includes: |
keywords: [ASIR, ISO, virtualizacion, Windows 2019]
abstract: Configuración de Windows 2019 Server en VirtualBox
---


# Configuración básica de Windows Server Essentials

En este asistente se creará la configuración básica para un pequeño servidor que utilizaremos más adelante para unir máquinas al dominio, pero vamos a realizar ahora el proceso, y nos dejaremos esta máquina configurada y lista para cuando la necesitemos.

![Paseo 1](InstalacionWindows2019/W2019_104352.png)
\ 

Configuraremos la hora del equipo, esto es más importante de lo que parece, ya que cuando estemos utilizando *kerberos*, una desincronización de la hora nos impedirá acceder a las máquinas.

![Configuracion Hora](InstalacionWindows2019/W2019_104414.png)
\ 

# Configuración de la compañia

Vamos a establecer en esta pantalla la configuración del dominio (grupo de ordenadores) que trabajarán compartiendo recursos.

No hemos sido muy originales en el ejemplo.

![Compañia](InstalacionWindows2019/W2019_104517.png)
\ 

# Configuración del Administrador de la red

Hay que configurar un usuario que será el administrador de todo el dominio, de todas las máquinas que configuremos en la red.

Para diferenciarlo del Administrador *local* lo llamaremos: 

> netadminiso

Y usaremos la contraseña

> #netadmin1s0#

![Administrador de la red](InstalacionWindows2019/W2019_104657.png)
\

# Configuración Recomendada

En la siguiente pantalla nos pedirá que configuremos lo básico de las actualizaciones, en nuestro caso marcaremos: *Usar la configuración recomendada*.

![Configuración básica](InstalacionWindows2019/W2019_104745.png)
\ 

# Proceso de configuración

A continuación el sistema se configurará, este proceso puede ser lento y tardar bastantes minutos.

![Configuración Windows Server](InstalacionWindows2019/W2019_104800.png)
\ 

Una vez finalizado, es conveniente reiniciar el servidor. 

Al ser un sistema operativo preparado para servidores, no se nos permite apagarlo o reiniciarlo sin establecer un motivo, debemos indicarle cual es en cada reinicio. En este caso se puede marcar : Otros (*no planeado*).


![Finalizacion](InstalacionWindows2019/W2019_111020.png)
\ 


# Ultimos pasos

Si al reiniciar e intentar navegar (si, utilizando *Internet explorer*), no nos permite navegar, es debido a que al crear el dominio, hemos inicializado el servidor DNS a nosotros mismos. Y debemos añadir un servidor de nombres que sí sepa resolver las peticiones DNS que generemos.

![Herramientas Administrativas](InstalacionWindows2019/W2019_113208.png)
\ 

Para ello, entraremos en las herramientas de Administración y en el **Panel** haremos clic en *Configurar este servidor local*.

![Configurar este servidor local](InstalacionWindows2019/W2019_114400.png)
\ 

Se nos mostrarán los detalles del servidor, esto lo veremos más adelante con mucho más detalle, pero ahora en la pestaña **Tareas**, seleccionaremos la Opcion *Administrador de DNS*  y en el apartado **Reenviadores**, añadiremos la un servidor DNS:

> 1.1.1.1

![Servidores DNS ](InstalacionWindows2019/W2019_114647.png)
\ 

Ahora si que podremos *resolver* nombres de fuera de nuestro dominio.

![Internet Explorer](InstalacionWindows2019/W2019_115939.png)
\ 