# positional Parameter bind to position

# $empId = $args[0]
# $empName = $args[1]
# $empLoc = $args[2]

# Write-Host Employee id is $empId
# Write-Host Employee Name is  $empName
# Write-Host Employee location is  $empLoc

#named parameters are more helpful
[cmdletBinding(SupportsShouldProcess=$true)]
param (
    [Parameter(Mandatory=$true)]
    [ValidateSet(100,200,300,400)]
    [int] $empId,

    [Parameter(Mandatory=$true)]
    [Alias("name")]
    [string] $empName,

    [string] $empLoc = "noida",

    [bool] $operation = $true,

    [int] $num1 = 25,

    # Parameter help description
    [Parameter(Mandatory=$true)]
    [int] $num2 
)

Write-Host "Employee id is $empId"
Write-Host "Employee Name is  $empName"
Write-Host "Employee location is  $empLoc"

if($operation) {
    if($PSCmdlet.ShouldProcess("Rest API run","sum operation"))
    {
       Write-Host " Sum of numbers $($num1 + $num2) "
    }
}
else{
    Write-Host "Difference of numbers $($num1 - $num2)"
}
