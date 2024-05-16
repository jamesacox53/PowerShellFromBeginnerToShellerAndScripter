'Name the Service you want to Stop/Start:'
$Name = Read-Host

$ServiceObject = Get-Service -Name $Name

'The Service named ' + $ServiceObject.Name + ' has the status ' + $ServiceObject.Status

if ($ServiceObject.Status -eq 'Running') {
    $ServiceObject | Stop-Service

} elseif ($ServiceObject.Status -eq 'Stopped') {
    $ServiceObject | Start-Service

}

$ServiceObject = Get-Service -Name $ServiceObject.Name

'The Service named ' + $ServiceObject.Name + ' has the status ' + $ServiceObject.Status