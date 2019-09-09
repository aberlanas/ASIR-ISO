# Ejemplos de tratamiento de ficheros con xmls, csv
# etc.

get-process | Export-Clixml -Path process.xml; Get-Content process.xml