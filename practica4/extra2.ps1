$altura = Read-Host "Introduce la altura de la piramide(un numero entero): "
for($i = 1; $i -le $altura; $i++){
    Write-Host ("- " *($i-1)) -NoNewline
    Write-Host ("*")
    
}