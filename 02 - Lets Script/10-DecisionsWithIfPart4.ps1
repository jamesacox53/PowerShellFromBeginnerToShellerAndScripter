'Please input the name of a user:'
$UserName = Read-Host

$UserObject = Get-LocalUser -Name $UserName

if ($UserObject.Enabled -eq $True) {
    Disable-LocalUser -InputObject $UserObject

} else {
    Enable-LocalUser -InputObject $UserObject
}