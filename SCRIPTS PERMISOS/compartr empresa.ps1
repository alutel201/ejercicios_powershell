New-SmbShare -name "Empresa" -Path "C:\Empresa"
$acl = Get-Acl "C:\Empresa"
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Todos","Read","None","None","Allow")
$acl.SetAccessRule($rule)
Set-Acl "C:\Empresa" $acl