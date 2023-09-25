[int] $num = Read-Host "Dime un numero: "

for ($a = 1; $a -le 10; $a++){
    $mult = $a * $num
    Write-Host "$a * $num es igual a $mult"
}