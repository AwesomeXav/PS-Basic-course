if( (Test-Path $location))
{
write-Verbose "Location exists!"
if((Get-Item $location).GetType().Name -eq "DirectoryInfo")
{
write-Verbose "And it's a folder!"
}
else
{
throw "A file is not a good location."
}

}
else
{
throw "Please select an existing location!"
}
