$usuarios = Import-Csv Z:\practica5\usuarios.csv

foreach ($usr in $usuarios){
    Write-Host "Nombre: $($usr.nombre), Apellido: $($usr.apellidos), Grupo: $($usr.grupo)"
}