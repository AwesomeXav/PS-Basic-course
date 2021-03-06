Read-Host -assecurestring | ConvertFrom-SecureString | Out-File C:\tmp\secureString.txt

$username = "CD\Administrator"
$password = Get-Content C:\tmp\secureString.txt | ConvertTo-SecureString
$cred = New-Object -typename System.Management.Automation.PSCredential -argumentlist $username, $password

Get-WmiObject win32_diskdrive -ComputerName DC01 -Credential $cred