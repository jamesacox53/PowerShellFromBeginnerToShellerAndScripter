$LocalUsers = Get-LocalUser

foreach($LocalUser in $LocalUsers) {
    'The user ' + $LocalUser.Name + ' has Description ' + $LocalUser.Description
}

$LocalUsers.Count