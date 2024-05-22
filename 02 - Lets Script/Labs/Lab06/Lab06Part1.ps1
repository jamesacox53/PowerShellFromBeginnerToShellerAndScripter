$UsersCSV = Import-Csv -Path '.\users.csv'

New-ADOrganizationalUnit -Name 'sales'

New-ADOrganizationalUnit -Name 'IT'

New-ADOrganizationalUnit -Name 'managers'


foreach($UserObj in $Users) {
    $SecurePasswordStr = ConvertTo-SecureString -String $UserObj.PASSWORD -AsPlainText -Force
    $OU = 'OU=' + $UserObj.DEPARTMENT + ',DC=Root,DC=LOCAL'
    $UPN = $UserObj.LOGINNAME + '@Root.local'
    
    New-AdUser -Name $UserObj.NAME -SamAccountName $UserObj.LOGINNAME -AccountPassword $SecurePasswordStr -Enabled $True -Path $OU -UserPrincipalName $UPN -Department $UserObj.DEPARTMENT
}