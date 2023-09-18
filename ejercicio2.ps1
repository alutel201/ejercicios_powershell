[int] $numero1 = Read-Host "Dime un numero: "
[int] $numero2 = Read-Host "Dime otro numero: "
$ressuma = $numero1 + $numero2
$resresta = $numero1 - $numero2
$resmult = $numero1 * $numero2
$resdiv = $numero1 / $numero2
$resresto = $numero1 % $numero2
Write-Host "La suma de los dos numeros es "$ressuma
Write-Host "La resta de los dos numeros es "$resresta
Write-Host "La multiplicacion de los dos numeros es "$resmult
Write-Host "La division de los dos numeros es "$resdiv
Write-Host "El resto de los dos numeros es "$resresto
