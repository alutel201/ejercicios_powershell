$edad = Read-Host "Dime tu edad: "
 Write-Host "Has cumplido "
for ($a = 1; $a -le $edad; $a++)
{
    Write-Host $a
}
Write-Host "años"