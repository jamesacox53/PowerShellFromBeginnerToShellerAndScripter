$ServiceName = Get-Service -Name 'spooler'
$ServiceName | Get-Member | Out-Host

$ServiceName.Name
$ServiceName.DisplayName

'The Service with the name ' + $ServiceName.Name + ' has the status ' + $ServiceName.Status

"Please input the Service Name you want to show:"
$UserInput = Read-Host

$ServiceName2 = Get-Service -Name $UserInput

'The Service with the name ' + $ServiceName2.Name + ' has the status ' + $ServiceName2.Status