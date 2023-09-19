Write-Host "*************CALCULADORA*************"
Write-Host ""
Write-Host "1.Sumar"
Write-Host "2.Restar"
Write-Host "3.Multiplicar"
Write-Host "4.Dividir"
[int] $opcion = read-Host "Que deseas hacer? Elige una opcion: "
[int] $num1 = Read-Host "Dime el primer numero entero: "
[int] $num2 = Read-Host "Dime el segundo numero entero: "

switch ($opcion){
    1{
        $suma = $num1 + $num2
        Write-Host "La suma de ambos numeros es: $suma"}
    2{
        $resta = $num1 - $num2
        Write-Host "La resta de ambos numeros es: $resta"}
    3{
        $mult = $num1 * $num2
        Write-Host "La multiplicacion de ambos numeros es: $mult"}
    4{
        $div= $num1 / $num2
        Write-Host "La division de ambos numeros es: $div"}
    }