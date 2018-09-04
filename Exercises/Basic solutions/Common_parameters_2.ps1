"c:\","c:\tmp","c:\" |Get-Item  # works
"c:\","not an item","c:\" |Get-Item # doesn't work -> error
"c:\","not an item","c:\" |Get-Item -ErrorAction SilentlyContinue
"c:\","not an item","c:\" |Get-Item -ErrorAction SilentlyContinue -ErrorVariable wrong
$wrong
# because it isn't an error anymore, but the content of a variable

# or, all errors are stored in:
$Error
