Get-Process | Group-Object -Property ProcessName -NoElement

$res = Get-AzResource
$res | Group-Object -Property ResourceGroupName -NoElement
