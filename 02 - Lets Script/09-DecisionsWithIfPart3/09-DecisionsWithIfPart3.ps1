'Please input the name of a user:'
$UserName = Read-Host

$UserObject = Get-LocalUser -Name $UserName

if ($UserObject.Enabled -eq $True) {
    Disable-LocalUser -Name $UserName

} else {
    Enable-LocalUser -Name $UserName
}