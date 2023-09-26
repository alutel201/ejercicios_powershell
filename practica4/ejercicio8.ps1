[int] $altura = Read-Host "Introduce un numero entero: "
for($i = 1; $i -le $altura; $i++){
    for($num = 2*$i-1; $num -ge 1; $num =$num - 2){
    Write-Host -NoNewline "$num "
    
    }
    Write-Host ""
}