$UsersCSV = Import-Csv -Path '.\users.csv'

New-ADOrganizationalUnit -Name 'sales'

New-ADOrganizationalUnit -Name 'support'

New-ADOrganizationalUnit -Name 'managers'


foreach($UserObj in $Users) {
    $SecurePasswordStr = ConvertTo-SecureString -String $UserObj.UserPassword -AsPlainText -Force
    $OU = 'OU=' + $UserObj.Department + ',DC=Root,DC=LOCAL'
    
    New-AdUser -Name $UserObj.Name -AccountPassword $SecurePasswordStr -Enabled $True -Path $OU -UserPrincipalName $UserObj.UPN -Department $UserObj.Department
}