[int] $num1 = read-Host "Dime un numero entero: "
[int] $num2 = read-Host "Ahora dime otro numero entero: "
if ($num1 -gt $num2){
    Write-Host "$num1 es mayor que $num2"}
elseif ($num1 -lt $num2){
    Write-Host "$num1 es menor que $num2"}
elseif ($num1 -eq $num2){
    Write-Host "$num1 es igual que $num2"}