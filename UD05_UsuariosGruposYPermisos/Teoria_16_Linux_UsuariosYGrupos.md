---
title: UD05 - Usuarios, Grupos y Permisos
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [ASIR, ISO, Usuarios, Grupos, Permisos]
---

\newpage

## Comandos en GNU/LinuX de administración de usuarios y grupos

### Comando useradd

El comando `useradd` permite añadir nuevos usuarios al sistema, además de establecer la información por defecto de los nuevos usuarios que se añadan.

Sintaxis `useradd [opciones] [login]`

Ejemplos

 * `# useradd violonchelo `
 * crea el usuario *violonchelo* con todas las opciones por defecto.
 * `# useradd –D`
 * muestra las opciones por defecto que se aplicarán a los usuarios nuevos.

### Comando adduser

La orden `useradd` no se suele usar, ya que no configura correctamente las cuentas de usuario. En su lugar en los sistemas Linux actuales se ha creado un script denominado adduser que nos permite crear usuarios de una forma más amistosa.

Sintaxis
  * `adduser [opciones] [login]`
  * `adduser usuario grupo`

Ejemplos

 * `# adduser trombon`
 * crea un usuario trombon, preguntándonos por su contraseña, comentarios, etc.
 * `# adduser `
 * crea un usuario, preguntandonos por su nombre, su contraseña, comentarios, etc.
 * `adduser trombon orquesta`
 * añade al usuario *trombon*, que debe existir ya, al grupo **orquesta**, que debe existir también.

### Comando addgroup

Nos permite crear grupos.

Sintaxis `addgroup grupo`

Ejemplo:

 * `#addgroup viento`

### Comando userdel

El comando `userdel` permite eliminar definitivamente un usuario del sistema.

Sintaxis userdel [opciones] <login>

Ejemplo:

 * `# userdel -r arpa`
 * elimina al usuario arpa y borra su directorio base. **Por defecto el directorio base se mantiene**

### Comando groupdel

El comando `groupdel` permite eliminar definitivamente un grupo del sistema.

Sintaxis `groupdel [opciones] grupo`

Ejemplo:

 * `# groupdel viento`

\newpage

### Comando passwd

El comando `passwd` permite cambiar el password de un usuario. También puede bloquear, desbloquear y deshabilitar una cuenta. Si se invoca sin argumentos se asume el usuario actual.

Sintaxis `passwd [opciones] [login]`

Ejemplos

 * `# passwd violin`
 * coloca una contraseña para violin
 * `# passwd -d violin`
 * deshabilita la cuenta del usuario violin eliminando su password
 * `# passwd -l violin`
 * *bloquea* la cuenta del usuario violin poniendo un signo ! delante de su password en el fichero /etc/shadow
 * `# passwd -u violin`
 * *desbloquea* la cuenta del usuario violin

### Comando usermod

El comando `usermod` se emplea para modificar algunas propiedades de los usuarios como: el login, el directorio base, el shell que se inicia al conectarse, los grupos a los que pertenece, la fecha de expiración de la cuenta, etc. También bloquea y desbloquea una cuenta.

Sintaxis `usermod [opciones] <login>`

Ejemplos

 * `# usermod -s /bin/zsh violin`
 * coloca el shell zsh para el usuario violin
 * `# usermod -G users,disk violin`
 * señala como grupos secundarios de violin a users y disk
 * `# usermod -e 2015-12-22 violin`
 * indica que la cuenta de violin expirará el 22 de diciembre del 2015

### Comando gpasswd

El comando `gpasswd` permite administrar los grupos. Se puede utilizar para añadir y eliminar
usuarios, señalar un administrador e indicar un password de grupo.

Sintaxis `gpasswd [opciones] <grupo>`

Ejemplos

 * `# gpasswd -A violin admin`
 * señala como administrador del grupo admin al usuario violin
 * `$ gpasswd admin`
 * cambia el passwd del grupo admin
 * `$ gpasswd -a viola admin`
 * añade el usuario viola al grupo admin

### Comando su

El comando `su` permite ejecutar un shell (u otro comando) cambiando los identificadores del grupo y del usuario actual. Si se le pasa - como primer argumento ejecuta el shell como un login shell, o sea se creará un proceso de login tal y como ocurre naturalmente cuando un usuario se conecta al sistema. Si no se especifica el login del usuario se asume **root**.

Sintaxis `su [opciones] [login]`

Ejemplos

 * `$ su - `
 * El guion (*-*) permite abrir una shell para el usuario.
 * `su violin`
 * `$ su --c "cat /etc/shadow" `
 * ejecuta un comando con los privilegios de root. (básicamente, realiza lo mismo que el comando **sudo**).

### Comando sudo

En algunos sistemas, como puede ser *Ubuntu*, existe una orden denominada `sudo`, que viene a ser un `su –-c` (es decir, permite ejecutar una orden como el usuario **root**).

Sintaxis `sudo [opciones] [comando]`

Ejemplos

`sudo gedit /etc/shadow`
Ejecuta gedit /etc/shadow como si lo ejecutará el root.
  
`sudo su`
Nos transforma en el root hasta que escribamos exit.
  
`sudo su -`
Nos transforma en el root, y abre un nuevo shell para el root.

### Comando id

El comando `id`, imprime dado un usuario, sus identificadores de usuario y de grupo principal (gid y uid) así como del resto de los grupos a los que pertenece. Sin argumentos se asume el usuario actual.

Sintaxis : `id [opciones] [login]`

Ejemplo:

`# id violin`
 
Produce como salida:

`uid=502(violin) gid=502(violin) groups=502(violin),100(users)`

### Comando chage

El comando `chage` nos permita gestionar la información sobre la caducidad de las contraseñas.


### Comando last

El comando `last` nos indica las últimas conexiones de usuario que han existido en el sistema.

### Comando getent

El comando getent devuelve la base de datos **Activa** de usuarios y grupos que están presentes en el Sistema, ya sea mediante un LDAP o locales. Es mucho más fiable que el típico

`cat /etc/passwd`

 o

`cat /etc/group`

Ejemplo:

`getent passwd`
`getent groups`

### Comando who

El comando `who` muestra los usuarios conectados al sistema ya sea local o remotamente.

Sintaxis : `who [opciones] [fichero] [am i]`

Sin argumentos `who` muestra los _logins_ de los usuarios conectados, por que terminal lo han hecho y en que fecha y hora.

Algunas opciones:

* `-H` : imprime un encabezamiento para las columnas.
* `-w` : indica si está activada o no la posibilidad de recibir mensajes por parte de cada usuario conectado (+ indica que si, - que no y ?, desconocido).
* `-i `: imprime además para cada usuario conectado que tiempo lleva sin interactuar con el sistema (idle time). Si lleva menos de un minuto pone un punto y si es más de 24 horas la cadena *old*.
* `-q `: sólo muestra los logins de los usuarios conectados y la cantidad total de ellos.

Ejemplos

`who`
`who am I`


### Comando w

El comando `w` muestra también los usuarios conectados al sistema además de lo que están haciendo(proceso que ejecutan en ese momento) y otras informaciones.

Sintaxis `w [opciones] [usuario]`

Sin argumentos este comando muestra una primera línea con: la hora en que arrancó el sistema, cuanto tiempo lleva funcionando, cuantos usuarios hay conectados (sin incluir las sesiones gráficas) y tres porcientos de carga de la CPU: durante el último, los 5 y los 15 minutos anteriores.

Ejemplos

```shell
w
w violin
```

### Comando finger

El comando `finger` permite buscar y mostrar información asociada a los usuarios del sistema. La información que muestra finger para cada usuario es:

 * El login.
 * El nombre y los apellidos.
 * El directorio base.
 * El shell.
 * La oficina y el teléfono.
 * El teléfono de la casa.
 * La lista de terminales a través de las que está conectado con la fecha, tiempo sin interactuar (iddle time) y si está deshabilitada la posibilidad de recibir mensajes.
 * La fecha y hora del último nuevo mensaje electrónico recibido y desde cuando no accede al buzón.
 * El contenido del fichero .plan en el directorio base.

Ejemplos

`finger viola`
`finger trompa`