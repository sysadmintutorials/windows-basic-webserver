# windows-basic-webserver
This script is used to install Microsoft Windows IIS, followed by creating a basic index.html file.

The webpage will display the hostname, local IP address as well as "I am a basic web server created by Sysadmintutorials, enjoy" text

### Pull and Execute straight from Github

Run the following command within Powershell:

- Invoke-WebRequest -Uri "https://raw.githubusercontent.com/sysadmintutorials/windows-basic-webserver/refs/heads/main/windows-basic-webserver.ps1" -OutFile "$env:TEMP\web.ps1"
- powershell -ExecutionPolicy Bypass -File "$env:TEMP\web.ps1"

### Note

- ExecutionPolicy Bypass allows the script to run even if PowerShell has execution restrictions.
- IIS uses C:\inetpub\wwwroot as the default path for the website.
- Make sure the server has internet access to fetch the file.
