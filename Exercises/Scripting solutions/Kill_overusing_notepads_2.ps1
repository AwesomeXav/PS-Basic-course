#retrieve them
$notepads = Get-Process Notepad

$averageCPU = ($notepads | Measure-Object -Average CPU).Average

#the pipe
$notepads | Where-Object CPU -gt $averageCPU | Stop-Process

#the loop
foreach ($notepad in $notepads) {
    if ($notepad.CPU -gt $averageCPU) {
        Write-Host "Killing $($notepad.ID)" -ForegroundColor Red -BackgroundColor Black
        $notepad.kill()
    }
}

