---
title: UD04 - Administración de Procesos y Red
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [ASIR, ISO, Procesos, Red]
---

\newpage

# La línea de comandos

> En el principio...fue la línea de comandos.
> Neal Stephenson (1999)

Estamos acostumbrados a ver interfaces gráficas cada vez más espectaculares, vistosas y amigables 
para el usuario. Nada tiene que ver la interfaz de creación de usuarios de cualquier smartphone 
actual con los **MainFrames** de los años 80. 

Sin embargo, la línea de comandos (el intérprete de órdenes), nos ofrece una comunicación más fluida y cercana al sistema de lo que muchas interfaces gráficas consiguen.

Como administradores de sistemas, debemos ser capaces de manejar el entorno de los diferentes intérpretes de órdenes para realizar las operaciones que deseemos, ya que aunque las herramientas gráficas de administración facilitan *enormemente* la tarea, existen multitud de procesos y acciones que por repetitivas o por sus características, deben ser ejecutadas desde los intérpretes, ya sea de manera interactiva (nosotros introduciendo las órdenes una a una), como mediante la ejecución de Scripts (*guiones*).

## ¿ Qué es un Intérprete de órdenes?

Un intérprete de órdenes, también conocido como **Terminal**, haciendo referencia a los antiguos sistemas *MainFrame*, es la interfaz más básica entre el usuario y el sistema operativo y los programas.

Se trata de un programa que traduce las órdenes que el usuario le introduce (normalmente a través del teclado) utilizando un conjunto de ordenes que deben ser conocidas tanto por el sistema como por el usuario.

El usuario debe introducir las órdenes con los diferentes parámetros (veremos esto más adelante en las prácticas) y al pulsar *Intro*, el sistema operativo interpreta la secuencia de caractéres introducida y **si no hay errores**, la ejecuta.

Esto nos permite una comunicación interactiva entre el usuario y el sistema operativo.

>Usuario -> Orden -> Sistema Operativo -> Usuario -> Orden ...

## ¿Qué es un Script?

Se trata de un fichero que incluye una serie de órdenes que serán ejecutadas por un intérprete de órdenes.

La palabra _script_ significa **guión**, y cada guión puede ser interpretado por actores (_interpretes_) diferentes. A lo largo del módulo veremos diferentes intérpretes relacionados con los sistemas operativos, pero en el mundo de la programación existen muchos más, ya que los lenguajes de programación a menudo no son compilados, sino también interpretados.

Respecto a lo que nos atañe en este módulo, veremos en profundidad los siguientes intérpretes:

* PowerShell
* BASH

## ¿Cómo se crea un script?

Un script se crea mediante un editor de textos, pero no el libreoffice o el Word, sino uno de _texto plano_. En Windows podemos encontrar siempre instalado el **Notepad.exe** (_Bloc de Notas_) y en las últimas versiones de Windows el Entorno Integrado de Desarrollo (IDE) _PowerShell ISE_. Sin embargo, no es necesario el IDE para editarlos o crearlos, es tan solo un entorno que nos facilita la creación. En GNU/LinuX tenemos multitud de editores, pero por ahora trabajaremos con _nano_, un pequeñísimo editor que nos ofrece coloreado de sintaxis (esto es mucho más importante de lo que pueda parecer en estos momentos) y una serie de ayudas y de opciones en pantalla que nos permitirán realizar las acciones habituales sobre los ficheros.

## Estructura básica de un script

Un script queda estructurado en trés partes básicas, que expondremos a continuación.

### Primera línea (o Shebang)

En los sistemas UNIX (y GNU/LinuX por extensión), la primera línea del script contiene la ruta al intérprete que lo ejecutará. Se utiliza un formato concreto que es **muy importante** que nos habituemos a escribirlo:

```shell
#!/bin/bash
echo "Hola ASIR!"
exit 0
```

Esto lo veremos más adelante en la Unidad, pero el _shebang_ de este script sería : `#!/bin/bash`. 

Es importante que nos habituemos a documentar nuestros scripts, así que durante el curso en todos los scripts que hagamos indicaremos en la primera línea cuál es el intérprete que lo ejecutará, ya sea mediante el _shebang_ en los Scripts de GNU/LinuX como mediante un pequeño comentario en los Scripts de PowerShell en los sistemas Windows.

```powershell
#!/usr/bin/env pwsh
Write-Host "Hola ASIR desde PowerShell"
```

Uno de los cambios que han introducido en las últimas versiones de PowerShell es la posibilidad de instalarlo en sistemas GNU/LinuX, así qué utilizar el Shebang nos ayudará en caso de que queramos ejecutar nuestros Scripts de PowerShell en sistemas GNU/LinuX.

## Cuerpo del Script

A continuación escribiremos en orden los comandos que deseamos que se ejecuten, esto lo iremos viendo a lo largo del módulo, pero a modo de ejemplo:

```shell
#!/bin/bash

echo "1"
echo "2"
echo "3"

exit 0
```

Nos mostrará una salida como esta:

```shell
1
2
3
```

Los comandos se ejecutan de arriba hacia abajo.

## Finalización del script

Es una buena praxis que finalicemos el script con un `exit 0` que nos devolverá un código de que el script ha acabado de manera satisfactoria y no de manera incontrolada, a causa de un error a mitad de ejecución.
