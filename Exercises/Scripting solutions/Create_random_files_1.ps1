$folderOne = "C:\tmp\StartFolder"
$folderTwo = "C:\tmp\SecondFolder"

New-Item -ItemType Directory -Path $folderOne
md $folderTwo # the same as above, but shorter

# define the function to create a filename
function Get-NewFileName([int]$nrOfChars = 5)
{
Return -join ((65..90) + (97..122) | Get-Random -Count $nrOfChars | % {[char]$_})
}

# create the first 20 files
for($i = 0;$i -lt 20;$i++)
{
New-Item -Path $folderOne -Name ((Get-NewFileName) + ".txt") -ItemType File
}

# copy them to the second folder
Get-ChildItem -Path $folderOne | Copy-Item -Destination $folderTwo

# create the additional 10 files in the second folder
for($i = 0;$i -lt 10;$i++)
{
New-Item -Path $folderTwo -Name ((Get-NewFileName) + ".txt") -ItemType File
}
