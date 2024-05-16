'Please input the name of a user:'
$UserName = Read-Host

$UserObject = Get-LocalUser -Name $UserName

$UserObject

if ($UserObject.Enabled -eq $True) {
    'Do you want to disable User ' + $UserObject.Name + '? y/n'
    $Answer = Read-Host

    if ($Answer -eq 'y') {
        $UserObject | Disable-LocalUser

    } else {
        'Ok, we are not going to disable ' + $UserObject.Name
    }

} else {
    'Do you want to enable User ' + $UserObject.Name + '? y/n'
    $Answer = Read-Host

    if ($Answer -eq 'y') {
        $UserObject | Enable-LocalUser

    } else {
        'Ok, we are not going to enable ' + $UserObject.Name
    }
}

$UserObject

Get-LocalUser -Name $UserName