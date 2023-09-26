[int] $edad = Read-Host "Introduce tu edad: "
if($edad -lt 4){
    Write-Host "Tu entras gratis"
}
elseif($edad -lt 18){
    Write-Host "Tienes que pagar 5€"
}
else{Write-Host "TIenes que pagar 10€"}