Import-Module ActiveDirectory
New-ADUser `
 -Name "Testeo" `
 -Path  "OU=TestOU,DC=ASIR,DC=ORG" `
 -SamAccountName  "Testeo" `
 -DisplayName "Usuario de pruebas" `
 -AccountPassword (ConvertTo-SecureString "MiContrasena123" -AsPlainText -Force) `
 -ChangePasswordAtLogon $true  `
 -Enabled $true
Add-ADGroupMember "Domain Admins" "Testeo";