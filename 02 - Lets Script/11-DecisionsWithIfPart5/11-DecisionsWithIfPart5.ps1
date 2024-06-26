﻿'Please input the name of a user:'
$UserName = Read-Host

$UserObject = Get-LocalUser -Name $UserName

$UserObject

if ($UserObject.Enabled -eq $True) {
    $UserObject | Disable-LocalUser

} else {
    $UserObject | Enable-LocalUser
}

$UserObject

Get-LocalUser -Name $UserName