Function Calculate-NetworkAddress($IP, $SubnetMask)
{

$IParray = $IP.Split(".")
$SNArray = $SubnetMask.Split(".")

$NetworkAddress = ""

for($i = 0; $i -lt 4 ; $i++)
{
$NetworkAddress += ( $IParray[$i] -band $SNArray[$i] ).ToString() + "."
}

return $NetworkAddress.Trim(".")
}

Function Calculate-BroadcastAddress($IP, $SubnetMask)
{

$IParray = $IP.Split(".")
$SNArray = $SubnetMask.Split(".")

$BroadcastAddress = ""

for($i = 0; $i -lt 4 ; $i++)
{
$BroadcastAddress += ( $IParray[$i] -bor (255-$SNArray[$i]) ).ToString() + "."
}

return $BroadcastAddress.Trim(".")
}


$IP = "192.168.15.25"
$SNMask = "255.255.255.0"

Calculate-NetworkAddress -IP $ip -SubnetMask $SNMask
Calculate-BroadcastAddress -IP $ip -SubnetMask $SNMask
