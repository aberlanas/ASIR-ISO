# Estableciendo la IP desde PowerShell
New-NetIPAddress -InterfaceAlias Ethernet -IPAddress 192.168.1.200 -PrefixLength 24 -DefaultGateway 192.168.1.1


# Estableciendo los servidores DNS
Set-DnsClientServerAddress -InterfaceAlias Ethernet -ServerAddresses("8.8.8.8","8.8.4.4")


# Estableciendo la puerta de enlace
New-NetRoute -InterfaceAlias Ethernet -NextHop "192.168.1.1" -DestinationPrefix "0.0.0.0/0"
