$UsersToCreate = Get-Content -Path '.\users.txt'

$Password = ConvertTo-SecureString -String 'Pa55w.rd' -AsPlainText -Force

foreach($UserName in $UsersToCreate) {
    New-LocalUser -Name $UserName -Password $Password

}