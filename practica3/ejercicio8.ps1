[string] $sexo = Read-Host "Eres hombre o mujer?: "
[string] $nombre = Read-Host "Cual es tu nombre?: "

if (($sexo -ieq "hombre" -and $nombre -gt 'n') -or ($sexo -ieq "mujer" -and $nombre -lt 'm')){
    Write-Host "Perteneces al grupo A"}
else{
    Write-Host "Perteneces al grupo B"}