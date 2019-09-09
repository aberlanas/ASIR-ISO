---
title: UD02 - Sistemas de Virtualización.
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [ASIR, ISO, Virtualización]
---

# Tarea: Compartir Recursos II

## [ Persistente ] : Creación de un filtro

Elige un dispositivo USB de tipo Disco Duro, lector de tarjetas, cámara, etc. Que no sea ni el ratón, ni el teclado que estamos utilizando. Y sigue los siguientes pasos:

* Conectalo al hipervisor.
* Abre el VirtualBox, en el menú de configuración de la MV, apartado USB.
* Haz click en el icono USB+ y selecciona *elegir dispositivo desde lista*.
* Elige el dispositivo que has conectado.

Si ahora arrancamos la MV...vemos que podemos utilizar el dispositivo, sin embargo, en el hipervisor este dispositivo ha dejado de estar disponible.


## [ Temporal ] Conexión temporal

Para realizar una conexión temporal, lo haremos desde el icono que aparece en la parte inferior de la ventana del VirtualBox. Si no realizamos un filtro esta conexión será temporal, y al reiniciar la MV perderemos la conexión con el dispositivo.

# Ejercicio

Realiza una conexión temporal con el dispositivo elegido.

Realiza un filtro con ese mismo dispositivo, comprueba que permanece incluso al reiniciar la máquina.

¿Qué posibles usos le darías a este mecanismo? Redacta un documento explicando el proceso y los usos.
