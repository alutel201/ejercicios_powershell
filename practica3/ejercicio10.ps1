[double] $puntos = Read-Host "Cuantos puntos tienes?(0.0 ,0.4, 0.6, 0.8, 1): "
$pago = 2400 * $puntos
switch ($puntos) {
    {$puntos -eq 0.0} {Write-Host "Tu rendimiento ha sido inaceptable. Recibiras $pago €"}
    {$puntos -eq 0.4} {Write-Host "Tu rendimiento ha sido aceptable. Recibiras $pago €"}
    {$puntos -eq 0.6} {Write-Host "Tu rendimiento ha sido meritorio. Recibiras $pago €"}
    {$puntos -eq 0.8} {Write-Host "Tu rendimiento ha sido casi perfecto Recibiras $pago €"}
    1 {Write-Host "Tu rendimiento ha sido inmejorable. Recibiras $pago €"}
    default {Write-Host "Datos incorrectos"}
}