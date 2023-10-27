$empleados = Import-Csv C:\Users\Administrador\Desktop\empleados.csv -Delimiter ";"
New-Item C:\Empresa_users2 -ItemType Directory
New-SmbShare -name "Empresa_users2$" -path "C:\Empresa_users2" -ChangeAccess "Usuarios del dominio"
foreach ($emp in $empleados){
    $nombre = $($emp.nombre)
    New-Item C:\Empresa_users2\"$nombre" -ItemType Directory
    $acl = Get-Acl -Path C:\Empresa_users2\"$nombre"
    $acl.SetAccessRuleProtection($true, $false)
    $reglausuario = New-Object System.Security.AccessControl.FileSystemAccessRule("$nombre","fullcontrol","containerinherit,objectinherit","none","allow")
    $reglaadmin = New-Object System.Security.AccessControl.FileSystemAccessRule("Administradores","fullcontrol","containerinherit,objectinherit","none","allow")
    $acl.SetAccessRule($reglausuario)
    $acl.SetAccessRule($reglaadmin)
    Set-Acl "C:\Empresa_users2\$nombre" $acl
    if ($emp.departamento -ieq "PERSONAL"){
        Set-ADUser -Identity "$nombre" -ScriptPath "carpetas$($emp.departamento).bat" -HomeDrive "Z:" -HomeDirectory "\\EMPRESA-DC1\Empresa_users2$\$nombre" -ProfilePath "\\EMPRESA-DC1\Empresa_users2$\$nombre"
    }
    else{
        Set-ADUser -Identity "$nombre" -ScriptPath "carpetas$($emp.departamento).bat" -HomeDrive "Z:" -HomeDirectory "\\EMPRESA-DC1\Empresa_users2$\$nombre"
    }
}