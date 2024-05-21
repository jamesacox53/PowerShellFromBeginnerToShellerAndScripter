$Users = Get-Content -Path '.\users.txt'

$SecureStr = ConvertTo-SecureString -String 'Pa55w.rd' -AsPlainText -Force
$OU = 'OU=Test,DC=root,dc=local'

foreach($User in $Users) {
    New-AdUser -Name $User -AccountPassword $SecureStr -Enabled $True -Path $OU
}