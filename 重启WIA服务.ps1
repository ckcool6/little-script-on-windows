$WIA = Get-Service | Where-Object {$_.Name -eq "StiSvc"}

Stop-Service -Name StiSvc
$WIA
Start-Service -Name StiSvc
$WIA

Pause