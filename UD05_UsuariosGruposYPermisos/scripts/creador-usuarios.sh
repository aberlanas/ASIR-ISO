#!/bin/bash
# License : GPL v3

#
# Comenta lo que ocurre tras cada bloque de instrucciones.
#

# "Bloque 1"
if [ "$(id -u)" -ne "0" ]; then 
	echo "No tienes permisos" && exit 1
fi 
#
# 
#

# "Bloque 2"
adduser fagot --gecos "Fagot,RoomNumber,WorkPhone,HomePhone" --disabled-password
echo "fagot:fagot123" | chpasswd
#
# 
#


# "Bloque 3"
addgroup cuerda
addgroup metal
addgroup instrumentos
addgroup direccion
addgroup orquesta
#
#
#

# "Bloque 4"
adduser fagot instrumentos 
adduser fagot adm
adduser fagot metal
#
#
#

# "Bloque 5"
deluser fagot metal
#
#
#

# "Bloque 6"
usermod -d /home/primer_fagot fagot
#
#
#

