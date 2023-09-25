[int] $num = Read-Host "Dime un numero entero: "
[int] $a = 1
do{
    Write-Host $a -NoNewline 
    $a++
    $a++
    if($a -lt $num){
        Write-Host ", " -NoNewline}
    
}until ( ($a -ge $num))