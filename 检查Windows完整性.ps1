DISM.exe /Online /Cleanup-image /Restorehealth

$?

if($? -eq $true){

sfc /scannow

}

pause