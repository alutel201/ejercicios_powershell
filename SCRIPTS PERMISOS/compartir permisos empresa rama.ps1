New-SmbShare -name "Personal" -Path "C:\Empresa\Personal"
$acl = Get-Acl "C:\Empresa\Personal"
$rule1 = New-Object System.Security.AccessControl.FileSystemAccessRule("Personal","Modify","ContainerInherit,ObjectInherit","None","Allow")
$rule2 = New-Object System.Security.AccessControl.FileSystemAccessRule("Todos","Read","ContainerInherit,ObjectInherit","None","Allow")
$rule3 = New-Object System.Security.AccessControl.FileSystemAccessRule("Administradores","FullControl","ContainerInherit,ObjectInherit","None","Allow")
$acl.SetAccessRule($rule1)
$acl.SetAccessRule($rule2)
$acl.SetAccessRule($rule3)
Set-Acl "C:\Empresa\Personal" $acl

New-SmbShare -name "Finanzas" -Path "C:\Empresa\Finanzas"
$acl = Get-Acl "C:\Empresa\Finanzas"
$rule1 = New-Object System.Security.AccessControl.FileSystemAccessRule("Finanzas","Modify","ContainerInherit,ObjectInherit","None","Allow")
$rule2 = New-Object System.Security.AccessControl.FileSystemAccessRule("Todos","Read","ContainerInherit,ObjectInherit","None","Allow")
$rule3 = New-Object System.Security.AccessControl.FileSystemAccessRule("Administradores","FullControl","ContainerInherit,ObjectInherit","None","Allow")
$acl.SetAccessRule($rule1)
$acl.SetAccessRule($rule2)
$acl.SetAccessRule($rule3)
Set-Acl "C:\Empresa\Finanzas" $acl

New-SmbShare -name "Ventas" -Path "C:\Empresa\Ventas"
$acl = Get-Acl "C:\Empresa\Ventas"
$rule1 = New-Object System.Security.AccessControl.FileSystemAccessRule("Ventas","Modify","ContainerInherit,ObjectInherit","None","Allow")
$rule2 = New-Object System.Security.AccessControl.FileSystemAccessRule("Todos","Read","ContainerInherit,ObjectInherit","None","Allow")
$rule3 = New-Object System.Security.AccessControl.FileSystemAccessRule("Administradores","FullControl","ContainerInherit,ObjectInherit","None","Allow")
$acl.SetAccessRule($rule1)
$acl.SetAccessRule($rule2)
$acl.SetAccessRule($rule3)
Set-Acl "C:\Empresa\Ventas" $acl

New-SmbShare -name "Produccion" -Path "C:\Empresa\Produccion"
$acl = Get-Acl "C:\Empresa\Produccion"
$rule1 = New-Object System.Security.AccessControl.FileSystemAccessRule("Produccion","Modify","ContainerInherit,ObjectInherit","None","Allow")
$rule2 = New-Object System.Security.AccessControl.FileSystemAccessRule("Todos","Read","ContainerInherit,ObjectInherit","None","Allow")
$rule3 = New-Object System.Security.AccessControl.FileSystemAccessRule("Administradores","FullControl","ContainerInherit,ObjectInherit","None","Allow")
$acl.SetAccessRule($rule1)
$acl.SetAccessRule($rule2)
$acl.SetAccessRule($rule3)
Set-Acl "C:\Empresa\Produccion" $acl