#create Directory
New-Item -Path "c:\" -Name "Spirituality" -ItemType "Directory"
#create file
New-Item -Path "c:\Spirituality" -Name "HareKrishna.txt" -ItemType "file" -Value "hari bol"
#Read file content
Get-Content -Path "C:\Spirituality\hareKrishna.txt"

#Variables
$name = "Krishna"
write-host "i am trying to pray lord $name"

<# Preference variables
# by default its false
# can tell whats its going to do 
$WhatIfPreference = $true #>
Remove-Item -Path "C:\Spirituality\hareKrishna.txt"

# Automatic variables
# write-host $Error

for( $i=0 ;$i -le 108; $i++ )
{
    Write-Host "Hare Krishna "
 
}
# will get the folder's files
$files = Get-ChildItem -path "C:\Program Files" -Name "Windows Photo Viewer"
foreach($file in $files)
{
    # printing all file names
    Write-Host $file
}
try {
    if(Get-Service -name dummy -ErrorAction SilentlyContinue )
    {
        Write-Host "Service found" 
    }
    else {
        Write-Host "No service found with that name"  
        Write-host $_
    }    
}
catch {
    Write-Host "Here is the details about exception"
    Write-host $_

}

Set-PSReadLineOption -PredictionSource None
