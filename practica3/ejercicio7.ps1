$pwd = "holA01"
$intro = Read-Host "Introduzca su contrseña: "

if ($intro -ieq $pwd){
    Write-Host "Contraseña correcta"}
else{
    Write-Host "Contraseña incorrecta"
}