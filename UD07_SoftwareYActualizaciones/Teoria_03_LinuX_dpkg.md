---
title: UD07 - Software y Actualizaciones
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [ASIR, ISO, Software, Actualizaciones]
---

\newpage
## dpkg

*dpkg* es el programa base para manejar paquetes Debian en el sistema.
Si tiene paquetes .deb, dpkg es lo que permite instalar o analizar sus contenidos.
Pero este programa sólo tiene una visión parcial del universo Debian:

sabe lo que está instalado en el sistema y lo que sea que se le provee en la línea de órdenes, pero no sabe nada más de otros paquetes disponibles.
Fallará si no se satisface una dependencia.

Por el contrario, herramientas como apt crearán una lista de dependencias para instalar todo tan automáticamente como sea posible.


> *NOTA* ¿dpkg o apt?
> Se debe ver a dpkg como una herramienta de sistema (tras bambalinas) y apt como una herramienta más cerca del usuario que evita las limitaciones del primero.
> Estas herramientas trabajan juntas, cada una con sus particularidades, adecuadas para tareas específicas.

### Instalación de paquetes

`dpkg` es, sobre todo, la herramienta para instalar un paquete Debian ya disponible (porque no descarga nada). 
Para hacer esto utilizamos su opción *-i* o *--install*. 

`sudo dpkg -i r2-d2_1.0_all.deb`
 
### Eliminación de un paquete

Ejecutar dpkg con la opción *-r* o *--remove* seguida del nombre de un paquete eliminará dicho paquete. 
Esta eliminación, sin embargo, no es completa: se mantendrán todos los archivos de configuración, scripts del encargado, 
archivos de registros (registros de sistema) y otros datos de usuarios que gestiona el paquete. 

`sudo dpkg -r r2-d2`

De esta forma, puede desactivar el programa fácilmente al desinstalarlo pero es posible reinstalarlo rápidamente con la misma configuración. 

Para eliminar completamente todo lo asociado con un paquete, utilice la opción *-P* o *--purge* seguida del nombre del paquete. 

>
> *NOTA* Hay que darse cuenta que en la *desinstalación* de paquetes con dpkg NO se pone el nombre del deb sino el nombre del paquete.
>

### Consulta en la base de datos de Dpkg 

> *NOTA* Sintaxis de opciones
> La mayoría de las opciones se encuentran disponibles en una versión «larga» (una o más palabras relevantes precedidas por doble guión) y en una versión «corta» (una única letra, normalmente la primera de las letras de la versión larga, y precedida por un único guión).
>Esta convención es tan común que constituye un estándar POSIX.

Daremos primero las opciones en su versión larga y luego la versión corta correspondiente
 (que evidentemente aceptarán los mismos parámetros posibles) de las opciones:

 * *--listfiles paquete* (o *-L*), que listará los archivos instalados por este paquete
 * *--search archivo* (o *-S*), que encontrará el o los paquetes que contienen el archivo
 * *--status paquete* (o *-s*), que mostrará las cabeceras de un paquete instalado
 * *--list* (o *-l*), que mostrará la lista de paquetes conocidos por el sistema y su estado de instalación
 * *--contents archivo.deb* (o *-c*), que listará los archivos en el paquete Debian especificado
 * *--info archivo.deb* (o -I), que mostrará la información de este paquete Debian. 
 

| Comando | Acción |
| :------|:------|
| `dpkg -I  c3po_1.0_all.deb` | Nos muestra información del paquete c3po| 
| `dpkg -i  c3po_1.0_all.deb` | Instala el paquete c3po| 
| `dpkg -r  c3po` | Desinstala el paquete c3po |
| `dpkg -S /usr/bin/scite`  | Nos indica el propietario de ese fichero |
| `dpkg -L scite` | Muestra el listado de los ficheros que pertenecen al paquete scite |
| `dpkg -s scite` | Muestra el estado del paquete scite |
|` dpkg -c c3po_1.0_all.deb` | Muestra los ficheros que contiene el paquete deb ANTES de instalarlo|
