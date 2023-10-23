New-SmbShare -name "Personal" -Path "C:\Empresa\Personal" -ChangeAccess "PERSONAL" -FullAccess "Administradores" -ReadAccess "Usuarios del dominio"
$acl = Get-Acl "C:\Empresa\Personal"
$acl.SetAccessRuleProtection($true,$false)
$rule1 = New-Object System.Security.AccessControl.FileSystemAccessRule("Personal","Modify","ContainerInherit,ObjectInherit","None","Allow")
$rule2 = New-Object System.Security.AccessControl.FileSystemAccessRule("Todos","Read","ContainerInherit,ObjectInherit","None","Allow")
$rule3 = New-Object System.Security.AccessControl.FileSystemAccessRule("Administradores","FullControl","ContainerInherit,ObjectInherit","None","Allow")
$acl.SetAccessRule($rule1)
$acl.SetAccessRule($rule2)
$acl.SetAccessRule($rule3)
Set-Acl "C:\Empresa\Personal" $acl

New-SmbShare -name "Finanzas" -Path "C:\Empresa\Finanzas" -ChangeAccess "FINANZAS" -FullAccess "Administradores" -ReadAccess "Usuarios del dominio"
$acl = Get-Acl "C:\Empresa\Finanzas"
$acl.SetAccessRuleProtection($true,$false)
$rule1 = New-Object System.Security.AccessControl.FileSystemAccessRule("Finanzas","Modify","ContainerInherit,ObjectInherit","None","Allow")
$rule2 = New-Object System.Security.AccessControl.FileSystemAccessRule("Todos","Read","ContainerInherit,ObjectInherit","None","Allow")
$rule3 = New-Object System.Security.AccessControl.FileSystemAccessRule("Administradores","FullControl","ContainerInherit,ObjectInherit","None","Allow")
$acl.SetAccessRule($rule1)
$acl.SetAccessRule($rule2)
$acl.SetAccessRule($rule3)
Set-Acl "C:\Empresa\Finanzas" $acl

New-SmbShare -name "Ventas" -Path "C:\Empresa\Ventas" -ChangeAccess "VENTAS" -FullAccess "Administradores" -ReadAccess "Usuarios del dominio"
$acl = Get-Acl "C:\Empresa\Ventas"
$acl.SetAccessRuleProtection($true,$false)
$rule1 = New-Object System.Security.AccessControl.FileSystemAccessRule("Ventas","Modify","ContainerInherit,ObjectInherit","None","Allow")
$rule2 = New-Object System.Security.AccessControl.FileSystemAccessRule("Todos","Read","ContainerInherit,ObjectInherit","None","Allow")
$rule3 = New-Object System.Security.AccessControl.FileSystemAccessRule("Administradores","FullControl","ContainerInherit,ObjectInherit","None","Allow")
$acl.SetAccessRule($rule1)
$acl.SetAccessRule($rule2)
$acl.SetAccessRule($rule3)
Set-Acl "C:\Empresa\Ventas" $acl

New-SmbShare -name "Produccion" -Path "C:\Empresa\Produccion" -ChangeAccess "PRODUCCION" -FullAccess "Administradores" -ReadAccess "Usuarios del dominio"
$acl = Get-Acl "C:\Empresa\Produccion"
$acl.SetAccessRuleProtection($true,$false)
$rule1 = New-Object System.Security.AccessControl.FileSystemAccessRule("Produccion","Modify","ContainerInherit,ObjectInherit","None","Allow")
$rule2 = New-Object System.Security.AccessControl.FileSystemAccessRule("Todos","Read","ContainerInherit,ObjectInherit","None","Allow")
$rule3 = New-Object System.Security.AccessControl.FileSystemAccessRule("Administradores","FullControl","ContainerInherit,ObjectInherit","None","Allow")
$acl.SetAccessRule($rule1)
$acl.SetAccessRule($rule2)
$acl.SetAccessRule($rule3)
Set-Acl "C:\Empresa\Produccion" $acl