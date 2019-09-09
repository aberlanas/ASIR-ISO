---
title: UD03 - Instalación y Arranque
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [ASIR, ISO, Instalación, Arranque, BIOS, UEFI]
---

\newpage

# BIOS y UEFI

El **BIOS** o la **BIOS** (*Basic Input Output System*) del PC es el sistema básico del ordenador que provee de determinados procedimientos vitales para el arranque y funcionamiento del equipo. Se trata de la configuración de Hardware que se utiliza nada más encender, estableciendo parámetros tales como el orden de arranque (que lo veremos más adelante), capacidades del microprocesador, prestaciones de la RAM, configuración de la hora y fecha del sistema, velocidades de los ventiladores, etc.

La **BIOS** ha sido el sistema básico de configuración durante muchos años, pero desde el año 2005 está siendo sustituido por **UEFI**.

**UEFI** ha sido desarrollado por Intel con el propósito de reemplazar por completo a **BIOS** de la PC y se está estableciendo con el nuevo estándar de la industria. Debemos conocer ambos sistemas, ya que nos encontraremos con ordenadores que todavía siguen utilizando **BIOS** y los nuevos ya están usando **UEFI**

## UEFI

### Un poco de historia 

**EFI**, (*Extensible Firmware Interface*) como en un principio se conocía, es un desarrollo que ha hecho Intel y que comienza su andadura a principios de los años 90 para crear un entorno de trabajo más eficaz a los procesadores *Itanium*. Sin embargo el proceso de desarrollo se ha hecho extensible a toda la industria, ya que en la actualidad UEFI está siendo implementado en la mayoría de las motherboards más modernas del mercado, dotándolas de características como cifrado, una interfaz de control del hardware mucho más avanzada y transparente para el usuario,  autenticación de red y una mejora sustancial en los tiempos de arranque del equipo, entre otras.

En el año 2005 se creó el consorcio **UEFI** (*Unified Extensible Firmware Interface*), cuya misión es la de desarrollar y mejorar el estándar para su adopción masiva por parte de la industria y reemplazar la antigua BIOS. En el comienzo los sistemas GNU/LinuX tomaron esta decisión como algo privativo o sencillamente como una estrategia de Microsoft para cerrar la posibilidad a la instalación de Sistemas Operativos que no fueran los de Microsoft, sin embargo en la actualidad esto no es cierto, ya que en el mundo del Software Libre, muchas distribuciones ya soportan **UEFI** y **GPT** (esto lo veremos más adelante en el módulo). 

Lo que si es cierto es que **UEFI**  aporta un mayor control sobre el Hardware instalado para los usuarios sin conocimiento profundos de informática, incluyendo la posibilidad de hacerlo a través de un ratón.

Al igual que en la **BIOS**, **UEFI** permite configurar el hardware y arrancar el sistema operativo desde una unidad de disco, CD/DVD, USB, etc. pero teniendo en cuenta las características del hardware moderno. 

Más arriba hemos mencionado que el sistema **UEFI** mejora mucho el tiempo de arranque del ordenador con respecto a los tiempos de la BIOS, esto es debido sobretodo a que la **UEFI** es capaz de cargar mucho antes que la **BIOS**.

## Averiguar si utilizamos BIOS o UEFI

### Sistemas Windows

1. Paso 1

   Lo primero que tenemos que hacer es ejecutar el Explorador de archivos y desplazarnos a la siguiente ubicación:

   > **C:\\Windows\\Panther**

2. Paso 2

   En esta carpeta buscamos un archivo de texto llamado *setupact.log*. Lo abrimos con el Bloc de notas de Windows (*Notepad*).

3. Paso 3

   Una vez que hayamos abierto *setupact.log*, pulsamos la combinación de teclas “*Ctrl + B*” para abrir el cuadro Buscar e introducimos el siguiente texto (sin las comillas): “Detected boot Environment”.

4. Paso 4

   Cuando el buscador encuentre las mencionadas entradas, podremos comprobar si nuestro sistema utiliza BIOS o UEFI por las siguientes líneas:

   + Si usamos BIOS:

      > **Callback_BootEnvironmentDetect: Detected boot environment: BIOS**

   + Si usamos UEFI:

      > **Callback_BootEnvironmentDetect: Detected boot environment: UEFI**
	  

Si no hemos encontrado Panther

1. Paso 1

   Presionamos la combinación de teclas *Win + R* para que aparezca el cuadro “*Ejecutar*” e introducimos el siguiente comando: “MSInfo32”. Luego de ello pulsamos “Enter”.

2. Paso 2

   Esto ejecutará el servicio de información del sistema. Buscaremos el apartado *Modo de BIOS*. Si estamos usando **BIOS** se mostrará “Heredado”.

  En el caso de que nuestra PC tenga **UEFI**, mostrará **UEFI** (fácil de identificar en este caso).


### En sistemas GNU/LinuX 

En los sistemas GNU/LinuX podemos comprobar si nuestro Sistema Operativo está utilizando UEFI, comprobando que existe una ruta en `/sys/` :

> `/sys/firmware/efi/`

En esta carpeta podemos encontrar los ficheros que está utilizando nuestro Kernel (veremos esto más adelante) para interactuar con la **UEFI**.

## Enlaces de interés

* [How to Check if Your Computer Uses UEFI or BIOS](https://itsfoss.com/check-uefi-or-bios/)
