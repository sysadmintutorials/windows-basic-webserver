# Enable IIS (Internet Information Services)
Install-WindowsFeature -Name Web-Server -IncludeManagementTools

# Start IIS service
Start-Service W3SVC
Set-Service W3SVC -StartupType Automatic

# Create index.html in IIS default web directory
$hostname = $env:COMPUTERNAME
$ip = (Get-NetIPAddress -AddressFamily IPv4 | Where-Object {$_.InterfaceAlias -notlike "*Loopback*" -and $_.IPAddress -notlike "169.*"} | Select-Object -First 1 -ExpandProperty IPAddress)
$html = "<h2>Welcome to $hostname : $ip</h2><p> I am a basic web server created by Sysadmintutorials, enjoy."

$html | Set-Content -Path "C:\inetpub\wwwroot\index.html" -Encoding UTF8
