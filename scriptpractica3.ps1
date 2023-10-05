$departamentos = Import-Csv C:\Users\Administrador\Desktop\archivos\departamentos.csv -Delimiter ";"
$empleados = Import-Csv C:\Users\Administrador\Desktop\archivos\empleados.csv -Delimiter ";"

New-ADOrganizationalUnit -Name "Empresa" -path "DC=EMPRESA,DC=LOCAL"

foreach ($dep in $departamentos){
    New-ADOrganizationalUnit -Name $($dep.departamento) -Path "OU=Empresa,DC=EMPRESA,DC=LOCAL" -Description $($dep.descripcion)
}

foreach ($dep in $departamentos){
    New-ADGroup -Name $($dep.departamento) -GroupCategory Security -GroupScope Global -path "OU=$($dep.departamento),OU=Empresa,DC=EMPRESA,DC=LOCAL"
}

foreach ($emp in $empleados){
    New-ADUser -Name "$($emp.nombre)" -Path "OU=$($EMP.departamento),OU=Empresa,DC=EMPRESA,DC=LOCAL" -SamAccountName $($emp.nombre) -UserPrincipalName $($emp.nombre) -AccountPassword (ConvertTo-SecureString "aso2023." -AsPlainText -Force) -GivenName $($emp.nombre) -Surname $($emp.apellido) -ChangePasswordAtLogon $false -Enabled $true
    Add-ADGroupMember -Identity $($emp.departamento) -Members $($emp.nombre)


 
}