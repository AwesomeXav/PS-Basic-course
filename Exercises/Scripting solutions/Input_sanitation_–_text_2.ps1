Function Newer-ComputerName
{
do
{
$ComputerName = Read-Host ("What is the new computer called")
}
while(("l","w","s") -notcontains $ComputerName.ToLower().Substring(0,1))

return $ComputerName
}
