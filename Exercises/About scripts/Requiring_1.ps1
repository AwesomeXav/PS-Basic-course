#requires -runasadministrator
#requires -module Hyper-V

[cmdletbinding()]
param(
[Parameter(Mandatory=$true)][String]$iso,
[Parameter(Mandatory=$true)][String]$name,
[Parameter(Mandatory=$true)][String]$switchname,
[Switch]$startVM=$true,
[String]$location = "C:\Virtual Machines"
)
…
