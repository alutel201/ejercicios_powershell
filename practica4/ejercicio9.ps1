$pwd = "hola01"

do{$intro = Read-Host "Introduce la contraseña: "

}until($intro -eq $pwd)