# Simple Script para obtener el valor 
# de una clave de registro

Push-Location -Path Registry::

$VALOR = Get-ItemProperty -Path HKCU\adminISO -Name CampoDWord

write-Host "El Valor es "$VALOR.CampoDWord

Pop-Location
