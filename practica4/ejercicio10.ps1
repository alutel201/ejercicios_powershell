do{
Write-Host "***********************************"
Write-Host "a)Crear una carpeta"
Write-Host "b)Crear un fichero"
Write-Host "c)Cambiar un fichero"
Write-Host "d)Borrar un archivo o carpeta"
Write-Host "e)Verificar si existe un fichero o carpeta"
Write-Host "f)Mostrar contenido de un directorio"
Write-Host "g)Mostrar la fecha y horas actuales"
Write-Host "x)Salir"
Write-Host "***********************************"
$intro = Read-Host "Que deseas hacer? "
switch($intro){
    "a"{$carpeta=Read-Host " Introduce la ruta y nombre de la carpeta: "
    New-item -ItemType Directory -path $carpeta
    Write-Host "Carpeta creada en "$carpeta
    }
    "b"{$fichero = Read-Host "Introduce la ruta y el nombre del fichero: "
    New-Item -ItemType File -path $fichero
    Write-Host "Fichero creado en "$fichero
    }
    "c"{$nombreActual = Read-Host "Introduce la ruta y el nombre actual del fichero o carpeta"
        $nuevoNombre = Read-Host "Introduce el nuevo nombre"
        Rename-Item -Path $nombreActual -NewName $nuevoNombre
        Write-Host "Nombre cambiado correctamente."
        }
    "d" {$nombreEliminar = Read-Host "Introduce la ruta y el nombre del fichero o carpeta a eliminar"
         Remove-Item -Path $nombreEliminar -Recurse -Force
         Write-Host "Archivo o carpeta eliminado correctamente."
        }
    "e" {$nombreVerificar = Read-Host "Introduce el nombre del fichero o carpeta a verificar"
         if (Test-Path -Path $nombreVerificar) {
             Write-Host "El archivo o carpeta existe."
            } else {
                Write-Host "El archivo o carpeta no existe."
            }
        }
    "f" {$directorio = Read-Host "Introduce la ruta del directorio"
         Get-ChildItem -Path $directorio
        }
    "g" {Get-Date
        }
    "x" {Write-Host "Saliendo del programa..."
         break
        }
       
    }


}until($intro -eq "x")