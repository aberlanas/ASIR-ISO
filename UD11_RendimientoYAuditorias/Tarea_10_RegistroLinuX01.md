---
title: UD11 - Rendimiento y Auditorias
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [ASIR, ISO, Auditorias, Herramientas Forenses]
---

# Tarea: Registro en GNU/LinuX I

En esta tarea vamos a ver y recordar los diferentes accesos al registro de los que disponemos en los Sistemas GNU/LinuX.

A lo largo de este módulo y en otros del ciclo habéis usado el registro de GNU/LinuX para diagnosticar un problema, vamos a ver ahora más detalles del registro.

## Syslog

Ya sabemos todos que _Todo en GNU/LinuX es un fichero_. Así que, debemos buscar en nuestro sistema de archivos una ruta donde vamos a encontrar todos los ficheros de registros:

```
/var/log/
```

Aunque en las últimas versiones, tal y como hemos visto en unidades anteriores contamos con herramientas de acceso como `journactl` y los `systemctl`, las aplicaciones y servicios siguen utilizando esta carpeta para almacenar los diferentes ficheros de registro.

El fichero que primero investigaremos en caso de que algo haya ido mal, o en busca de posibles pistas será:

```
/var/log/syslog
```

Se trata de un fichero que va incorporando los diferentes mensajes que provienen de multitud de servicios relativos al sistema, indicando las operaciones que se realizan en ellos.

Tareas como: 

* Se ha asignado una IP a una interfaz.
* Un usuario ha iniciado sesión.
* Problemas de resolución de **DNS**
* Y un larguísmo etc.

En el fichero aparecen los mensajes con el dia y la hora a la que ha ocurrido el evento, así que filtrar por lapso de tiempo es una tarea relativamente sencilla.

Saber leer en el registro es una de las tareas más importantes que debe conocer un administrador de sistemas, ya que proporciona información básica para el correcto diagnóstico y solución de un problema.

### Comandos útiles 

Los hemos ido viendo a lo largo del módulo, pero un breve resumen sería este:

``` 
# Comandos utiles 

# Muestra las ultimas lineas del fichero /var/log/syslog
tail /var/log/syslog

# Muestra el final del fichero, pero se queda escuchando...
tail -f /var/log/syslog 

# Muestra todos los mensajes relativos a la partición sda1
cat /var/log/syslog | grep -i sda1

# Muestra todos los mensajes relativos al servicio anacron
cat /var/log/syslog | grep -i anacron

```

Como podeis ver en los ejemplos, se puede filtrar y obtener información relativa a cualquier evento, ya sea filtrando por fecha, servicio, nombre de usuario, o cualquier palabra que defina el problema que estamos buscando. Esto es un ejemplo más de que el manejo de ficheros, la búsqueda de texto y el uso de expresiones regulares  son herramientas muy importantes para los administradores de sistemas.

Vamos a realizar unos ejercicios para afianzar y repasar estos conceptos.

# Ejercicios 

## Ejercicio 1

Realiza un Shell Script en BASH que muestre la última hora de inicio de sesión de un usuario que se le pasa como argumento.

## Ejercicio 2

Realiza un Shell Script en BASH que indique cuantas veces aparece en el log una determinada palabra.

## Ejercicio 3

Realiza un Shell Script en BASH que muestre en la máquina real información relativa a las consultas DNS.







