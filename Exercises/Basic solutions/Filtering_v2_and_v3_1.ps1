Get-Process | Where-Object { $_.Name -like "*otepa*" } # v2
Get-Process | Where-Object Name -like "*otepa*" # v3
Get-Process | Where-Object { $_.Name -like "*otepa*" -or $_.Name -like "*calc*" } # v2 and v3
Get-Process | Where-Object Name -like "*otepa*" -or Name -like "*calc*" # never works
Get-Process -name "Notepad","*calc*" # works in v2 and v3
Get-Process | Where-Object Name -in "Notepad","calculator"


