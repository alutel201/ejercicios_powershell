[int] $renta = Read-Host "Cual es tu renta anual?: "
switch ($renta){
    {$renta -lt 10000}{Write-Host "Tu impositivo es 5%"}
    {($renta -ge 10000) -and ($renta -lt 20000)}{Write-Host "Tu impositivo es 15%"}
    {($renta -ge 20000) -and ($renta -lt 35000)}{Write-Host "Tu impositivo es 20%"}
    {($renta -ge 35000) -and ($renta -lt 60000)}{Write-Host "Tu impositivo es 30%"}
    {($renta -ge 60000)}{Write-Host "Tu impositivo es 45%"}
}