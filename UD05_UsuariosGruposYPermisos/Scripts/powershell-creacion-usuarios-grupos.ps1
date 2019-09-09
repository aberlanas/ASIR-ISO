# PowerShell - Creacion de usuarios y grupos

$name = Read-Host 'Introduzca un nombre de usuario'
$server=[adsi]"WinNT://$env:computername"
$user=$server.Create("User","$name")
$password = Read-Host 'Introduzca un password'
$user.SetPassword($password

# NOTA: Busca en internet acerca de esta opcion 
# y habilitala o deshabilitala en funcion de 
# lo que has averiguado.
# $user.PasswordExpired = 1
#


$user.SetInfo()
 
# Opciones Extra
# $user.Put('Description','Limited user account')
# $flag=$user.UserFlags.Value -bor 0x800000
# $user.put('userflags',$flag)
# $user.SetInfo()
 
# Anyadir el usuario al grupo administrador
# $group=[adsi]"WinNT://$env:computername/Users,Group"
# $group.Add($user.path)
# add users to other groups

$NewUser.PasswordExpired  = 1

  $NewUser.SetInfo() 

