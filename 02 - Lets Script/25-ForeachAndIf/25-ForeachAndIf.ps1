$LocalUsers = Get-LocalUser

foreach($LocalUser in $LocalUsers) {
    if ($LocalUser.Enabled -eq $True) {
        Set-LocalUser -Name $LocalUser.Name -Description 'Enabled account'
    
    } else {
        Set-LocalUser -Name $LocalUser.Name -Description 'Disabled account'
    }
}

Get-LocalUser