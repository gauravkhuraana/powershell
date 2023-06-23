class God
{
    [string]$name = "krishna"

    [string] updateName($GodName)
    {
        $this.name = $GodName
        return $this.name
    }

}
# create an object for the class
$soul = [God]::new()

$soul.name # will print Krhhsna
$soul.updateName("HariBol") # prints hari bol

#(Get-Process).GetType()

$p= Get-Process

$p[0].GetType()
#"gaurav".GetType()

$p[0] | Get-Member

$p[0].Name

$soul | Get-Member




