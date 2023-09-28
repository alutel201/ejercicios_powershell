[int] $altura = Read-Host "Introduce un numero entero: "
for($i = 1; $i -le $altura; $i++){
    for($num = $i; $num -ge 1; $num =$num - 1){
    Write-Host -NoNewline "$num "
    
    }
    Write-Host ""
}