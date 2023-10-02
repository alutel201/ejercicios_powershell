$exit = 1

while($exit -eq 1){
function Sumar {
    param(
        [int] $x,
        [int] $y
    )
    $sumar = $x + $y
    Write-Host "La suma es $sumar"
}

function Resta {
    param(
        [int] $x,
        [int] $y
    )
    $resta = $x + $y
    Write-Host "La resta es $resta"
}

function Multiplicar {
    param(
        [int] $x,
        [int] $y
    )
    $mult = $x * $y
    Write-Host "La multiplicacion es $mult"
}

function Dividir {
    param(
        [int] $x,
        [int] $y
    )
    $div = $x / $y
    Write-Host "La division es $div"
}

[int] $num1 = Read-Host "Dime el primer numero entero: "
[int] $num2 = Read-Host "Dime el segundo numero entero: "
Write-Host "*************CALCULADORA*************"
Write-Host ""
Write-Host "1.Sumar"
Write-Host "2.Restar"
Write-Host "3.Multiplicar"
Write-Host "4.Dividir"
Write-Host "5.Salir"
[int] $opcion = read-Host "Que deseas hacer? Elige una opcion: "


switch ($opcion){
    1{Sumar $num1 $num2
       }
    2{Resta $num1 $num2
        }
    3{Multiplicar $num1 $num2
       }
    4{Dividir $num1 $num2
        }
    5{$exit = 2
    clear-host
        }
    }

}