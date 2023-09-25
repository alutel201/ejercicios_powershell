[int] $num =23
[int] $res =1
while($res -ne $num){
    $res = read-Host "Intenta divinar el numero: "
    if($res -gt $num){
        Write-Host "Incorrecto, es menor"}
    elseif($res -lt $num){
        "Incorrecto, es mayor"}
    else{
        Write-Host "Correcto!!!"
        break
    }

}