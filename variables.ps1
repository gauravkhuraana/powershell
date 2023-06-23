$p = Get-Process
#$p

$p | Get-Member

$p | Add-Member -MemberType NoteProperty -Name "Type" -value "System"

$p | Get-Member -MemberType NoteProperty

$x = Get-Process

$x | Where-Object {$_.ProcessName -like "svchost"}

2,5,1,0,9,11,3 | Sort-Object -Descending

$x | Sort-Object -Property CPUs -Descending

$x[0].GetType()

$x | Select-Object ProcessName, Id

$x | Sort-Object -Property ProcessName | Select-Object ProcessName

