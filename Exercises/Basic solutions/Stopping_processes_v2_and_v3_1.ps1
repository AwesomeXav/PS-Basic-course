notepad
$onenotepad = Get-Process notepad
$onenotepad.Kill()
(Get-Process notepad).kill()

notepad
notepad
$twonotepads = Get-Process notepad
$twonotepads.Kill()
(Get-Process notepad).kill()

notepad
notepad
Get-Process notepad | ForEach-Object { $_.kill() }
