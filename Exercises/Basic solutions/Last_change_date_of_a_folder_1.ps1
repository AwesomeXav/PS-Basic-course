(Get-ChildItem -Path $folder -Recurse -File |
Sort-Object LastWriteTime -Descending |
Select-Object -First 1).LastWriteTime
