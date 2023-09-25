$nombre = Read-Host "cual es tu nombre?: "
[int] $num = Read-Host "Dime un numero entero: "
for ($a = 1 ;$a -le $num; $a++)
{
    Write-Host $nombre
}