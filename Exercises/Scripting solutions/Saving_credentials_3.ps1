$newCred = Import-Clixml c:\tmp\Credential.xml
$newCred.GetNetworkCredential().password
