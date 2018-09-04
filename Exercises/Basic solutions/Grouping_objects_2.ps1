Get-Childitem c:\Windows | Select-Object extension -Unique
Get-Childitem c:\Windows\System32 | Group-Object Extension | Sort-Object count -Descending
