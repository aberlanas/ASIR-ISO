---
title: UD07 - Software y Actualizaciones
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [ASIR, ISO, Software, Actualizaciones]
---

# Instalación de software en GNU/LinuX

Veremos a continuación una serie de métodos mediante los cuales podremos instalar software en nuestros sistemas GNU/LinuX.

## Archivos con extensión .bin

Los archivos con extensión .bin son archivos binarios. No contienen un conjunto de programas o librerías como los paquetes, sino que son el programa en sí mismo.

Normalmente se suelen distribuir bajo este sistema programas comerciales, que pueden ser o no gratuitos, pero que normalmente no son libres.

Cuando se descarga un fichero de este tipo de internet y se guarda en el sistema, no tendrá permiso para ejecutarse. Lo que debemos hacer para dárselos:

Se pulsa sobre él el botón derecho y elegimos la opción Propiedades. En la pestaña Permisos, se muestra que el fichero tiene permisos de lectura y escritura para el propietario pero no para ejecución. Activamos la casilla "permitir al archivo ejecutarse como un programa" y cerramos la ventana.

Ahora que ya hemos dado permisos al fichero para poder ejecutarlo hacemos doble clic. Al hacerlo aparecerá una ventana dándo varias opciones. Elegimos ejecutar.

Para realizar esto mismo desde un terminal:

Damos permisos de ejecución con el comando.

`sudo chmod +x [nombre_binario].bin`

Instalamos el archivo binario con el comando:

`sudo ./[nombre_binario].bin`

## Archivos con extensión .sh

Los archivos .sh son scripts y para ejecutarlos en el sistema, hacemos doble click sobre ellos y seleccionamos "ejecutar desde terminal" y si alguno no funciona ejecutamos en una terminal el comando:


`bash nombre-paquete.sh`

Manera tradicional para todos los GNU/Linux:

Abrimos una terminal, nos situamos en la carpeta donde esté el archivo con el siguiente comando:

`cd RutaAlDirectorioQueContieneElFichero/`

Damos permisos con:

`chmod +x nombrepaquete.sh`

Y ejecutamos el script con:

`./nombrepaquete.sh`

Si necesitamos hacerlo como root, anteponemos "sudo" al comando:

`sudo ./nombrepaquete.sh`

## Archivos de extensión .run

Los archivos .run son asistentes, normalmente gráficos, que ayudan a la instalación. Para ejecutarlos basta con introducir en el terminal:

`sh ./[archivo].run`

Normalmente en el caso de que necesite permisos de superusuario (administrador) pedirá la contraseña; de no ser así basta con ejecutar en el terminal:

`sudo sh ./[archivo].run`

## Instalar a partir del código fuente (Compilar)

Lo que tendremos en este caso son ficheros comprimidos que contienen todas las fuentes que forman el Software , típicamente son paquetes con extensión (.tar.gz) (.tar.bz2)

A veces se encuentran aplicaciones que no proporcionan paquetes de instalación, y hay que compilar a partir del código fuente. Para ello, lo primero que hay que hacer en Ubuntu/Debian es instalar un meta-paquete llamado build-essential. Para ello, abrir una terminal y ejecutar los siguientes comandos:

 * `sudo apt update`
 * `sudo apt install build-essential`

También podemos necesitar instalar las librerías de desarrollo del kernel, necesarias para determinados paquetes:

 * `sudo apt install linux-headers-$(uname -r)`

Nota: debemos de tener en cuenta que estos paquetes pueden tener formas diferentes de empaquetado (con archivos diferentes) y por lo tanto maneras diferentes de instalación, por lo que si hay algún archivo como "readme, leadme o txt", debemos leerlo antes de nada por si nos dice la forma de instalación.

En **general**, los pasos a seguir para compilar una aplicación son los siguientes:

1. Descargar el código fuente (.tar.gz o .tar.bz2).
2. Como vemos, por la extensión .gz o .bz2 son archivos comprimidos, por lo que descomprimimos el código con Click derecho sobre él y elegimos "extraer aquí", creando una carpeta con el código.
3. Entrar en el directorio creado al descomprimir el código con el comando cd. Por ejemplo si lo hemos descargado en el Escritorio, ponemos en la terminal:

	* `cd Escritorio/nombre_carpeta_descomprimida`

	**Nota** : Ponemos el nombre exacto de la carpeta descomprimida.
4. Ejecutar el script "configure" que sirve para comprobar las características del sistema que afectan a la compilación, configurando la compilación según estos valores, y que crea el archivo makefile (algunos paquetes ya lo traen) ->

	* `./configure`

5. Ejecutar el comando make, encargado de la compilación.
	* `make`

6. Ejecutar el comando, que instala la aplicación en el sistema:
	* `sudo make install`

### Uso de checkinstall

O mejor aún, instalar checkinstall con el comando:

 * `sudo apt install checkinstall`

Y ya podemos ejecutar:

 * `sudo checkinstall`

El uso de checkinstall tiene también la ventaja de que el sistema tendrá constancia de los programas instalados de esa forma, facilitando también su desinstalación.
