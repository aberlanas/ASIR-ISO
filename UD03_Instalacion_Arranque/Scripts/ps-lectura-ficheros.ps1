# Obteniendo datos de un fichero y tratandolos
# Ejemplos de entrada y salida de ficheros
# con PowerShell

Get-Content datos.txt | ForEach-Object {
    Write-Host "Leyendo :: $_"


    Write-Host "__________"
}

# Un ejemplo de obtener los procesos en ejecucion y 
# almacenarlos en un fichero seria el siguiente:

Get-Process | Set-Content ejemplo_objetos.txt


# Sin embargo es mucho mas interesante una salida formateada
# de este estilo:

Get-Process | Out-String | Set-Content ejemplo_salida.txt ; Get-Content .\ejemplo_salida.txt


# Otra manera de trabajar con la salida seria 

Get-Process | Out-File ejemplo_out_file.txt ; Get-Content .\ejemplo_out_file.txt


