[int] $num = read-Host "Dime un numero entero: "
if ($num % 2 -eq 0){
    Write-Host "El numero es par"}
else{
    Write-Host "El numero es impar"}