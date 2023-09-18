[int] $horas = Read-Host "Cuantas horas has trabajado?: "
[int] $coste = Read-Host "Y cuanto te pagan por la hora?:"
$salario = $horas * $coste
Write-Host "El salario que te tienen que pagar es $salario"