$ruta = Read-Host "Dime la ruta de un fichero o una carpeta: "

if (Test-Path -path $ruta){
    Write-Host "El archivo existe"}
else{
    Write-Host "El archivo no existe"
    }