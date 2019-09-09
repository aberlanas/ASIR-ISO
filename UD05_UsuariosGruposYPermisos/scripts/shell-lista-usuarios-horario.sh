#!/bin/bash
# This script is licensed under GPL V3 or higher

# Dados ficheros de horas.dat que contienen usuarios y tiempo  que han estado 
# en el edificio. Generar un shell script que calcule el tiempo total que han estado
# y los muestre por salida estandar ordenados de mayor a menor tiempo en el edificio.


# Limpiamos el workspace
rm -rf /tmp/TMP_*.txt
rm -rf /tmp/DEF_*.txt
rm -ff /tmp/FIN_*.txt

# Realizamos una funcion para pasar de minutos a horas y dias
_minutosAHoras()
{
	usuario=$2
	let horas=$1/60
	let minutos=$1%60
	let dias=$horas/24
	let horas=$horas%24
	echo "Han sido $dias dias con $horas horas y $minutos minutos" > /tmp/FIN_$1.$usuario.txt
}


# Generemos los ficheros para cada uno de los usuarios
cat horas.dat | while read line; do
	read usuario tiempo <<< $(echo $line)
	read horas minutos <<< $(echo $tiempo|tr ":" " ")
	let minutos_total=$horas*60
	let minutos_total=$minutos_total+$minutos
	echo $minutos_total >> /tmp/TMP_$usuario.txt
done

# Ahora creamos diferentes ficheros con los usuarios
for f in $(ls -1 /tmp/TMP*.txt); do 

	read usuario <<< $(echo $f|cut -d '/' -f3| cut -d '_' -f2|cut -d '.' -f1)
	tiempo=0
	cat $f | while read line; do 
		let tiempo=$line+$tiempo
		echo $tiempo > /tmp/DEF_$usuario.txt
	done

	minutos_total="$(cat /tmp/DEF_$usuario.txt)"
	_minutosAHoras $minutos_total $usuario

done

for f in $(ls -1 /tmp/FIN_*.txt | sort -t_ -k2n | tac -); do 
	read usuario <<< $(echo $f| cut -d . -f2| cut -d . -f1)
	echo $usuario
	cat $f
	echo "======="
done



