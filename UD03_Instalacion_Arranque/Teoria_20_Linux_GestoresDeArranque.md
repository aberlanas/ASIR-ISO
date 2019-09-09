---
title: UD03 - Instalación y Arranque
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [ASIR, ISO, Instalación, Arranque, BIOS, UEFI]
---

\newpage

# Proceso de Arranque de LinuX

Para entender el proceso de arranque de Windows, primero debemos conocer los ficheros que son importantes para este proceso de arranque. Ya que en el caso de que tengamos un problema durante el arranque o un fallo en la configuración, conocer como funciona y cual es el orden en el que estos ficheros se van leyendo y ejecutando.

## GRUB

Linux no cuenta con un gestor de arranque propio, sino que permite usar cualquier gestor de arranque que deseemos. El que se suele incluir actualmente en todas las versiones de Linux es el *GRUB*.

El GRand Unified Bootloader (*GRUB*) es un gestor de arranque múltiple que se usa comúnmente para iniciar dos o más sistemas operativos instalados en un mismo ordenador. Otros gestores de arranque usados en Linux son el syslinux y el lilo.

Su proceso de inicio es el siguiente:

1. La _BIOS/UEFI_ busca un dispositivo de inicio (como el disco duro) y pasa el control al registro maestro de inicio (Máster Boot Record, _MBR_, los primeros 512 bytes del disco duro).
2. El *MBR* contiene la fase 1 de *GRUB*. Como el *MBR* es pequeño (512 bytes), la fase 1 sólo carga la siguiente fase del *GRUB* (ubicado físicamente en cualquier parte del disco duro). La fase 1 puede cargar ya sea la fase 1.5 o directamente la 2
3. *GRUB* fase 1.5 está ubicada en los siguientes 30 kilobytes del disco duro. La fase 1.5 carga la fase 2.
4. *GRUB* fase 2 (cargada por las fases 1 ó 1.5) recibe el control, y presenta al usuario el menú de inicio de *GRUB*. Este menú se configura mediante la ejecución de unos scripts situados en /etc/grub.d y que acaban generando el fichero de grub.cfg que configura la imágen, estos scripts toman valores de un fichero que se  encuentra dentro del directorio `/etc/default/` que se llama: *grub* (`/etc/default/grub`). Esto lo veremos a lo largo de las prácticas.

5. *GRUB* carga el kernel (núcleo) seleccionado por el usuario en la memoria y le pasa el control para que cargue el resto del sistema operativo.

 *GRUB* no es en realidad un gestor de arranque para Linux, sino un gestor de arranque para cualquier sistema operativo. De hecho, *GRUB* es perfectamente capaz de arrancar cualquier sistema operativo de la familia Windows sin ningún tipo de problemas

 1. *GRUB* es capaz de arrancar cualquier sistema operativo, por lo que respetará siempre (o al menos lo intentará) cualquier sistema operativo que hubiera en disco duro antes de que se instalara dicho gestor de arranque.
 2. Los gestores de arranque de Windows nunca respetarán a Linux. De hecho, el gestor de arranque de Windows solo es capaz de arrancar automáticamente a sistemas operativos Windows, siendo muy complicado conseguir arrancar otros sistemas operativos no de Microsoft. Esto cambia bastante con la UEFI, pero no simplifica la situación.
 3. Los gestores de arranque de Windows respetan a los sistemas operativos Windows pero solo a los anteriores a dicho Windows. Es decir, Windows 10 reconoce y respeta a Windows 7, pero al contrario no.

## Initramfs

Una vez hemos seleccionado el Sistema GNU/LinuX que vamos a arrancar, se le pasan al sistema dos ficheros muy importantes: el **kernel**(núcleo)  y el sistema de ficheros que debe ponerse en la RAM y comenzar la ejecución del mismo.

Ese sistema de ficheros que se copia directamente a la RAM se denomina: *initramfs* y el kernel viene determinado por el fichero *vmlinuz*.

A continuación el kernel comienza a ejecutar el proceso init, prepara el entorno para el montaje de los dispositivos y la carga de módulos que se encargarán de *manejar* el hardware que se vaya descubriendo en el equipo. 

> Un poco de historia: Anteriormente cuando se quería añadir un módulo para una determinado hardware o funcionalidad, debíamos *recompilar* el kernel añadiendo de manera estática aquellos módulos (o *drivers*) que debían ser cargados en los arranques para poder utilizarlos. Esto ya no es necesario, ya que el Kernel actual dispone de la habilidad de cargar módulos *en caliente* de tal manera que si descubre un determinad hardware para el que no tenía controlador, carga el disponible y lo habilita.

Se dice que en LinuX no hay drivers, tan solo trozos del núcleo que se cargan *dinámicamente*. Debemos tener en cuenta que un Driver (*manejador, o conductor*) no es más que el módulo que nos permite utilizar de una manera mejor determinado hardware, así que **Sí** tenemos drivers en LinuX y cumplen los mismos objetivos que en los demás SO: **Proporcionar al SO la capacidad de realizar operaciones con determinado Hardware.** 

A lo largo de las prácticas veremos determinadas operaciones que nos permitirán configurar estos módulos.

## Runlevels y servicios

Una vez el initramfs ha preparado el hardware, se lanza el sistema instalado y comienzan a cargarse los diferentes servicios y programas que tenemos instalados y configurados para que se inicien automáticamente cuando el SO arranca.

### ¿Qué es un servicio?

Un servicio es un programa que se lanza y se queda esperando a que otros programas o el usuario le realicen peticiones. Estos servicios son muy importantes, ya que como administradores de sistemas deberemos aprender a configurarlos para que funcionen de manera adecuada y controlada dentro de nuestro sistema informático.

Los servicios no atienden tan solo a las peticiones de los usuarios, sino muchas veces a las peticiones de otros servicios. 

Estos servicios pueden ser detenidos, arrancados de manera _manual_, habilitados en el inicio del Sistema,...

Además, los servicios necesitan comunicarse entre ellos, y unos se necesitan a otros. Por ejemplo, si hemos instalado un servidor Web, este necesitará hablar con el servicio que gestiona la red en la máquina para obtener información acerca de la conexión y de como interactuará con el mundo exterior. Otro ejemplo que veremos a lo largo del módulo es el sistema de autenticación de usuarios, si tenemos un sistema de autenticación que necesita la red, es requisito que la red funcione para que los usuarios puedan iniciar sesión en el equipo.


### Un poco de historia

¿Como se solventaba esto antes? El arranque de los sistemas LinuX (y muchos BSD) era un único proceso que iba pasando por una serie de directorios (`rc1.d,rc2.d,...`) que contenían los diferentes scripts de arranque de los procesos que se debian lanzar en cada etapa (_runlevel_). Si un proceso necesitaba que la red estuviera lista para cuando él se pusiera en marcha, pues tan solo tenía que situar su script en un orden posterior al que tenía sus _dependencias_. 

Esas carpetas (rc1.d,rc2.d,etc.), contienen los diferentes servicios que deben estar en marcha (o haber sido ejecutados) para considerar que una maáquina se encuentra en el paso requerido.

Estos son los diferentes runlevels:

 Nivel de ejecución | Nombre | Descripción
---------|----------|---------
0 |Detenido (halt) |	Apagado
1 |Modo de usuario único (Monousuario)| Arranca si la interfaz de red o los demonios de inicio. Este nivel de ejecución permite reparar problemas, o hacer pruebas en el sistema (_Recovery_).
2 | 	Multiusuario |	Multiusuario sin soporte de red.
3 |	Multiusuario con soporte de red.| 	Inicia el sistema normalmente.
4 |	Multiusuario con soporte de red. |	Igual que el 3.
5 |Multiusuario gráfico (X11) |Similar al nivel de ejecución 3 + gestor de entrada gŕafico para los usuarios.
6 |Reinicio |Reinicio del sistema

### Targets

Estos eran los runlevels con el anterior sistema (_sysv_), ahora se ha migrado a _systemd_ que ha cambiado el cambiado el concepto a destinos (_targets_) que son más flexibles.

Runlevel |	Targets en Systemd
--------- | -------------
0 |poweroff.target
1 |rescue.target
2 |multi-user.target
3 |multi-user.target
4 |multi-user.target
5 |graphical.target
6 |reboot.target

### Motivos del cambio

Existen muchos motivos para el cambio, sin embargo uno de los más importantes es que el antiguo sistema de ejecución ordenada no funciona de manera optimizada en las arquitecturas de multiprocesador y multinúcleo actuales. Esto es debido a que al ser _un único proceso_ que va esperando a que se ejecuten los otros, no aprovecha casi nada la posibilidad de ir ejecutando procesos en paralelo.

### Comandos de control de servicios

Vamos a ver algunos de los comandos que nos permite ver comprobar el estado de los servicios y _targets_ que hemos alcanzado.

La herramienta que se utiliza para gestionar y examinar el estado de los servicios y del propio systemd.

`systemctl`

----

Nos muestra los diferentes targets que podemos alcanzar.

`systemctl list-units --type=target `

----

Activa un servicio inmediatamente:

`systemctl start ssh.service` 

----

Desactiva un servicio inmediatamente:

`systemctl stop ssh.service` 

----

Reinicia un servicio:

`systemctl restart ssh.service` 

----

Muestra el estado de un servicio, incluyendo si se está ejecutando o no:

`systemctl status ssh.service` 

----

Permite un servicio para iniciarse en el arranque:

`systemctl enable ssh.service `

----

Deshabilita un servicio para que no se inicie durante el arranque:

`systemctl disable ssh.service `

----

Comprueba si un servicio ya está habilitado o no:

`systemctl is-enabled ssh.service; echo $?`

----

### Enlaces de interés

[RunLevels](https://www.linux.com/learn/intro-systemd-runlevels-and-service-management-commands)

[Systemd](https://www.linux.com/learn/here-we-go-again-another-linux-init-intro-systemd)

[Understanding and using Systemd](https://www.linux.com/learn/understanding-and-using-systemd)

## Gestores de entrada

Cuando todos los servicios necesarios han arrancado, y hemos alcanzado el target _graphical_ se pone en marcha el gestor de entrada, que nos permite iniciar sesión gráfica en el equipo. Seleccionando un entorno de escritorio (en caso de que tengamos más de uno instalado), el idioma en el que se lanzarán las aplicaciones y otras opciones de accesibilidad, tales como lectores de pantalla u opciones de alto contraste.

El reinicio de la sesión es una actividad que haremos con bastante frecuencia y es importante que sepamos reiniciarlo desde la línea de comandos:

Accion | Comando
------ | -------
Renicio | `systemct restart lightdm.service`
Paro |  `systemct stop lightdm.service`
Arranque |  `systemct start lightdm.service`
Ver Detalles  |  `systemct status lightdm.service` 

Hemos utilizado lightdm como gestor de entrada en los ejemplos, porque Xubuntu y Ubuntu lo utilizan en sus distribuciones, pero existen multitud de gestores de entrada, tales como _gdm3, kdm, xdm_, ...

## Resumen del Arranque en GNU/LinuX

![Arranque LinuX](GestorDeArranque/draw_ArranqueLinuX.png)
\ 