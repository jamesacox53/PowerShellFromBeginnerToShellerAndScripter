 = Get-Content -Path '.\users.txt'

foreach($User in $Users) {
    New-Item -Path '.' -Name $User -ItemType 'directory'
}