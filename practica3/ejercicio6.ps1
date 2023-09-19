$ruta = Read-Host "Dime la ruta de un fichero o una carpeta: "

if (Test-Path -path $ruta){
    Write-Host "El archivo existe"}
    if (test-path $ruta -pathtype Container){
     get-childitem -path $ruta -recurse}
else{
    Write-Host "El archivo no existe"
    }