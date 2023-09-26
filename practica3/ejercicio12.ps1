$pizza = Read-Host "Quieres una pizza vegetariana? "
if($pizza -ieq "si"){
    Write-Host "Estos son los ingredientes disponibles(mozzarella y tomate incluidos): "
    Write-Host "*****************************************************"
    Write-Host "1.Pimiento"
    Write-Host "2.Tofu"
    Write-Host "*****************************************************"
    [int] $ingr = Read-Host "Introduce el numero del ingrediente que desees: "
    if($ingr -eq 1){
        Write-Host "Los ingredientes de tu pizza vegetariana son: tomate, mozzarella y pimiento."
    }
    else{Write-Host "Los ingredientes de tu pizza vegetariana son: tomate, mozzarella y tofu."}
}
elseif($pizza -ieq "no"){
    Write-Host "Estos son los ingredientes disponibles(mozzarella y tomate incluidos): "
    Write-Host "*****************************************************"
    Write-Host "1.Peperoni"
    Write-Host "2.Jamon"
    Write-Host "3.Salmon"
    Write-Host "*****************************************************"
    [int] $ingr = Read-Host "Introduce el numero del ingrediente que desees: "
    if($ingr -eq 1){
        Write-Host "Los ingredientes de tu pizza no vegetariana son: tomate, mozzarella y peperoni."
    }
    elseif($ingr -eq 2)
    {Write-Host "Los ingredientes de tu pizza no vegetariana son: tomate, mozzarella y jamon."}
    else
    {Write-Host "Los ingredientes de tu pizza no vegetariana son: tomate, mozzarella y salmon."}

}