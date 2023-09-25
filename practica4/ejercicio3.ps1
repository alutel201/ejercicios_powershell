[int] $num = Read-Host "Dime un numero entero: "
while ($num -ge 0)
{
    Write-Host $num -NoNewline 
    $num--
    if($num -ge 0){
        Write-Host ", " -NoNewline}
}