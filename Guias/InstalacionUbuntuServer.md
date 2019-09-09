\newpage

# Instalación de Ubuntu Server #

## Creación de la máquina virtual ##

### Nombre y tipo ###

![Creación de la MV 1](https://raw.githubusercontent.com/aberlanas/ImplantacionSistemasOperativos/master/Unidad_01/InstalacionUbuntuServer/UbuntuServer_1.PNG)

Establecemos el nombre y la *arquitectura* de la máquina virtual

* ubuntuServer
* LinuX
* Ubuntu (64-bits)


### Memória RAM para la MV ###

![Creación de la MV 2](https://raw.githubusercontent.com/aberlanas/ImplantacionSistemasOperativos/master/Unidad_01/InstalacionUbuntuServer/UbuntuServer_2.PNG)

Establecemos 768 : debido a que los ordenadores no nos permite mucho más


### Disco duro para la MV ###


![Creación de la MV 3](https://raw.githubusercontent.com/aberlanas/ImplantacionSistemasOperativos/master/Unidad_01/InstalacionUbuntuServer/UbuntuServer_3.PNG)

Creamos un nuevo disco duro para la máquina virtual.

![Creación de la MV 4](https://raw.githubusercontent.com/aberlanas/ImplantacionSistemasOperativos/master/Unidad_01/InstalacionUbuntuServer/UbuntuServer_4.PNG)

El tipo de disco duro será : VDI *VirtualBox Disk Image*

![Creación de la MV 5](https://raw.githubusercontent.com/aberlanas/ImplantacionSistemasOperativos/master/Unidad_01/InstalacionUbuntuServer/UbuntuServer_5.PNG)

El espacio será reservado de manera dinámica.

![Creación de la MV 6](https://raw.githubusercontent.com/aberlanas/ImplantacionSistemasOperativos/master/Unidad_01/InstalacionUbuntuServer/UbuntuServer_6.PNG)

Lo *dejaremos crecer* hasta **20GB**



### Red de la MV ###

Esta máquina virtual va a tener algo diferente a la anterior, a la *ubuntuDesktop*, la idea es que esta máquina esté conectada a dos redes, una la red que tiene *internet* y la otra la red *controlada* por nuestro servidor, de esta manera los ordenadores que conectemos a la red interna estarán bajo nuestro servidor, y se le irán ofreciendo servicios como:

* DHCP
* DNS
* LDAP (Servicio de usuarios en red)
* SAMBA (Carpetas compartidas)
* NFS (Carpetas compartidas)
* NTP (Servicio de hora en internet)
* CUPS (Servicio de impresión)

Esto lo iremos viendo a lo largo del curso, por ahora tan solo nos preocuparemos de configurar de manera **fisica** la red de nuestro entorno. La llamaremos **isolan**

![Creación de la MV 7](https://raw.githubusercontent.com/aberlanas/ImplantacionSistemasOperativos/master/Unidad_01/InstalacionUbuntuServer/UbuntuServer_7.PNG)


### Disco de arranque de la MV ###

Seleccionamos la imágen *ISO* de Ubuntu Server que tenemos.

![Creación de la MV 8](https://raw.githubusercontent.com/aberlanas/ImplantacionSistemasOperativos/master/Unidad_01/InstalacionUbuntuServer/UbuntuServer_8.PNG)


## Instalación de Ubuntu Server ##

Ahora lo que haremos será instalar Ubuntu Server en la MV que hemos preparado.

### Iniciando la MV ###

Aparecen algunas opciones adicionales que no habiamos visto cuando arrancamos la *desktop*.

![Creación de la MV 9](https://raw.githubusercontent.com/aberlanas/ImplantacionSistemasOperativos/master/Unidad_01/InstalacionUbuntuServer/UbuntuServer_9.PNG)

### Proceso de instalación ###

Si seleccionamos un idioma que no está *totalmente* soportado durante la instalación, el proceso de instalación nos avisa de que es posible que hayan cosas que no salgan en la lengua elegida. En este caso lo que haremos será:

* Elegir *Español*

![Creación de la MV 10](https://raw.githubusercontent.com/aberlanas/ImplantacionSistemasOperativos/master/Unidad_01/InstalacionUbuntuServer/UbuntuServer_10.PNG)

![Creación de la MV 11](https://raw.githubusercontent.com/aberlanas/ImplantacionSistemasOperativos/master/Unidad_01/InstalacionUbuntuServer/UbuntuServer_11.PNG)

### Configuración de la Ubicación ###

En este punto elegimos el lugar donde está situado el ordenador, esto es muy interesante, no solo para el idioma determinado, si no también por que  el cambio de hora se hará automáticamente dependiendo del horario.

Recordar que el horario de España en la Península es:

* GMT+1

![Creación de la MV 12](https://raw.githubusercontent.com/aberlanas/ImplantacionSistemasOperativos/master/Unidad_01/InstalacionUbuntuServer/UbuntuServer_12.PNG)


### Configuración del teclado ###

Se nos ofrece la opción de *autodescubrir el teclado*, que consiste en ir pulsando las teclas que nos dice el programa de instalación y él, mediante logica va descartando hasta dar con la configuración adecuada.

![Creación de la MV 13](https://raw.githubusercontent.com/aberlanas/ImplantacionSistemasOperativos/master/Unidad_01/InstalacionUbuntuServer/UbuntuServer_13.PNG)

En nuestro caso lo que seleccionaremos es que le especificaremos nosotros el modelo: Español.

![Creación de la MV 14](https://raw.githubusercontent.com/aberlanas/ImplantacionSistemasOperativos/master/Unidad_01/InstalacionUbuntuServer/UbuntuServer_14.PNG)

![Creación de la MV 15](https://raw.githubusercontent.com/aberlanas/ImplantacionSistemasOperativos/master/Unidad_01/InstalacionUbuntuServer/UbuntuServer_15.PNG)


### Configuración de la red ###

El instalador si detecta tarjetas de red disponibles para ser usadas por el equipo cargará los drivers en el núcleo *kernel* y nos mostrará un mensaje donde nos pide que le indiquemos a través de que interfaz de red podrá **salir a internet** para descargarse componentes adicionales si lo necesita y configurar las actualizaciones más adelante en el proceso de instalación.

![Creación de la MV 16](https://raw.githubusercontent.com/aberlanas/ImplantacionSistemasOperativos/master/Unidad_01/InstalacionUbuntuServer/UbuntuServer_16.PNG)
![Creación de la MV 17](https://raw.githubusercontent.com/aberlanas/ImplantacionSistemasOperativos/master/Unidad_01/InstalacionUbuntuServer/UbuntuServer_17.PNG)

En nuestro caso es la tarjeta *eth0* la que dispone de **internet**, ya que la otra estará conectada a la red interna, tal y como hemos especificado en la configuración de la MV.

![Creación de la MV 18](https://raw.githubusercontent.com/aberlanas/ImplantacionSistemasOperativos/master/Unidad_01/InstalacionUbuntuServer/UbuntuServer_18.PNG)
![Creación de la MV 19](https://raw.githubusercontent.com/aberlanas/ImplantacionSistemasOperativos/master/Unidad_01/InstalacionUbuntuServer/UbuntuServer_19.PNG)


### Configuración del Hostname ###

El nombre de la máquina es muy importante en el caso de los servidores, ya que como veremos más adelante en la asignatura, se utilizará para resolver en primera instancia muchos de los servicios que configuraremos en el servidor.

![Creación de la MV 20](https://raw.githubusercontent.com/aberlanas/ImplantacionSistemasOperativos/master/Unidad_01/InstalacionUbuntuServer/UbuntuServer_20.PNG)


### Configuración de los usuarios ###

Durante el proceso de instalación se pregunta por el usuario administrador de la máquina (recordar que Ubuntu tiene la cuenta de **root** desactivada para hacer login por defecto).

Los pasos son los habituales:

 * Nombre completo  para la cuenta: *Usuario Administrador*
 * Nombre de usuario : *adminiso*
 * Contraseña (dos veces para comprobar que se ha escrito correctamente) : *admin1s0*
 * Configurar el cifrado de la carpeta personal : Marcar que no.

![Creación de la MV 21](https://raw.githubusercontent.com/aberlanas/ImplantacionSistemasOperativos/master/Unidad_01/InstalacionUbuntuServer/UbuntuServer_21.PNG)
![Creación de la MV 22](https://raw.githubusercontent.com/aberlanas/ImplantacionSistemasOperativos/master/Unidad_01/InstalacionUbuntuServer/UbuntuServer_22.PNG)
![Creación de la MV 23](https://raw.githubusercontent.com/aberlanas/ImplantacionSistemasOperativos/master/Unidad_01/InstalacionUbuntuServer/UbuntuServer_23.PNG)
![Creación de la MV 24](https://raw.githubusercontent.com/aberlanas/ImplantacionSistemasOperativos/master/Unidad_01/InstalacionUbuntuServer/UbuntuServer_24.PNG)
![Creación de la MV 25](https://raw.githubusercontent.com/aberlanas/ImplantacionSistemasOperativos/master/Unidad_01/InstalacionUbuntuServer/UbuntuServer_25.PNG)

### Configuración del NTP ###

Veremos más adelante en que consiste este servicio, por ahora teneis que tener en cuenta que es el que mantiene en hora el servidor, ajustandolo a los horarios de verano/invierno y preguntando a los relojes atómicos cual es la fecha *exacta* en cada momento. Esto es especialmente importante si vamos a usar *kerberos* como mecanismo de autenticación, ya que este sistema de seguridad es muy estricto con los tiempos.

![Creación de la MV 26](https://raw.githubusercontent.com/aberlanas/ImplantacionSistemasOperativos/master/Unidad_01/InstalacionUbuntuServer/UbuntuServer_26.PNG)
![Creación de la MV 27](https://raw.githubusercontent.com/aberlanas/ImplantacionSistemasOperativos/master/Unidad_01/InstalacionUbuntuServer/UbuntuServer_27.PNG)


### Configuracion de los discos - Particionado ###

A continuación vemos un particionado básico, en el caso de esta máquina virtual al no tener nada instalado es una configuración sencilla.

![Creación de la MV 28](https://raw.githubusercontent.com/aberlanas/ImplantacionSistemasOperativos/master/Unidad_01/InstalacionUbuntuServer/UbuntuServer_28.PNG)
![Creación de la MV 29](https://raw.githubusercontent.com/aberlanas/ImplantacionSistemasOperativos/master/Unidad_01/InstalacionUbuntuServer/UbuntuServer_29.PNG)
![Creación de la MV 30](https://raw.githubusercontent.com/aberlanas/ImplantacionSistemasOperativos/master/Unidad_01/InstalacionUbuntuServer/UbuntuServer_30.PNG)
![Creación de la MV 31](https://raw.githubusercontent.com/aberlanas/ImplantacionSistemasOperativos/master/Unidad_01/InstalacionUbuntuServer/UbuntuServer_31.PNG)
![Creación de la MV 32](https://raw.githubusercontent.com/aberlanas/ImplantacionSistemasOperativos/master/Unidad_01/InstalacionUbuntuServer/UbuntuServer_32.PNG)
![Creación de la MV 33](https://raw.githubusercontent.com/aberlanas/ImplantacionSistemasOperativos/master/Unidad_01/InstalacionUbuntuServer/UbuntuServer_33.PNG)

### Copia del sistema a la raiz ###

Una vez particionado y listo, el sistema se copia a la carpeta raiz */* para los futuros arranques. Esto lo veremos en los proximos dias.

![Creación de la MV 34](https://raw.githubusercontent.com/aberlanas/ImplantacionSistemasOperativos/master/Unidad_01/InstalacionUbuntuServer/UbuntuServer_34.PNG)


### Configuración del proxy en apt ###

En el caso de se esté usando un proxy para aprovechar el ancho de banda disponible, es conveniente configurarlo en este momento. En nuestro caso la configuración será vacia, ya que no utilizamos ninguno.

![Creación de la MV 35](https://raw.githubusercontent.com/aberlanas/ImplantacionSistemasOperativos/master/Unidad_01/InstalacionUbuntuServer/UbuntuServer_35.PNG)

\newpage
### Configuración de tasksel y las actualizaciones automáticas ###

Acerca de las actualizaciones automáticas, por ahora lo marcaremos como:

  `Sin actualizaciones automáticas`

Ya veremos más adelante como habilitarlas (si lo necesitamos).

Tasksel es un pequeño gestor de paquetes que permite instalar *suites* o *conjuntos de programas* que ofrecen una determinada funcionalidad en su conjunto:

A continuación vemos algunos (no os preocupeis que volveremos a ver esta pantalla más adelante)

 * Servidor LAMP : Linux+Apache+MySQL+Php.
 * Servidor de OpenSSH : Lo usaremos para sesiones remotas (marcar para instalarlo)
 * Servidor de Impresión : CUPS
 * ...


![Creación de la MV 36](https://raw.githubusercontent.com/aberlanas/ImplantacionSistemasOperativos/master/Unidad_01/InstalacionUbuntuServer/UbuntuServer_36.PNG)
![Creación de la MV 37](https://raw.githubusercontent.com/aberlanas/ImplantacionSistemasOperativos/master/Unidad_01/InstalacionUbuntuServer/UbuntuServer_37.PNG)
![Creación de la MV 38](https://raw.githubusercontent.com/aberlanas/ImplantacionSistemasOperativos/master/Unidad_01/InstalacionUbuntuServer/UbuntuServer_38.PNG)
![Creación de la MV 39](https://raw.githubusercontent.com/aberlanas/ImplantacionSistemasOperativos/master/Unidad_01/InstalacionUbuntuServer/UbuntuServer_39.PNG)


### Instalación del GRUB ###

El gestor de arranque en GNU/LinuX que está más extendido es GRUB (versiones 1 y 2). Veremos en clase en que consiste y como modificarlo. Por ahora basta que le digamos que queremos instalarlo en el registro principal de arranque (**MBR**)

![Creación de la MV 40](https://raw.githubusercontent.com/aberlanas/ImplantacionSistemasOperativos/master/Unidad_01/InstalacionUbuntuServer/UbuntuServer_40.PNG)
![Creación de la MV 41](https://raw.githubusercontent.com/aberlanas/ImplantacionSistemasOperativos/master/Unidad_01/InstalacionUbuntuServer/UbuntuServer_41.PNG)


### Terminando la instalación ###

El mensaje que veremos es bastante explicativo...

![Creación de la MV 42](https://raw.githubusercontent.com/aberlanas/ImplantacionSistemasOperativos/master/Unidad_01/InstalacionUbuntuServer/UbuntuServer_42.PNG)
![Creación de la MV 43](https://raw.githubusercontent.com/aberlanas/ImplantacionSistemasOperativos/master/Unidad_01/InstalacionUbuntuServer/UbuntuServer_43.PNG)


### Iniciando el nuevo sistema ###

Y ya tenemos nuestro *Ubuntu Server* perfectamente configurado.

![Creación de la MV 44](https://raw.githubusercontent.com/aberlanas/ImplantacionSistemasOperativos/master/Unidad_01/InstalacionUbuntuServer/UbuntuServer_44.PNG)
![Creación de la MV 45](https://raw.githubusercontent.com/aberlanas/ImplantacionSistemasOperativos/master/Unidad_01/InstalacionUbuntuServer/UbuntuServer_45.PNG)
