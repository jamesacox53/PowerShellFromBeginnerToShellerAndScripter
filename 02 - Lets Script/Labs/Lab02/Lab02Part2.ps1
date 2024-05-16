'Name the Service you want to Stop/Start:'
$Name = Read-Host

$ServiceObject = Get-Service -Name $Name

'The Service named ' + $ServiceObject.Name + ' has the status ' + $ServiceObject.Status

if ($ServiceObject.Status -eq 'Running') {
    'Do you want to stop the ' + $ServiceObject.Name + ' Service? y/n'
    $Answer = Read-Host
    
    if ($Answer -eq 'y') {
        $ServiceObject | Stop-Service
    
    }

} elseif ($ServiceObject.Status -eq 'Stopped') {
    'Do you want to start the ' + $ServiceObject.Name + ' Service? y/n'
    $Answer = Read-Host
    
    if ($Answer -eq 'y') {
        $ServiceObject | Start-Service
    
    }
}

$ServiceObject = Get-Service -Name $ServiceObject.Name

'The Service named ' + $ServiceObject.Name + ' has the status ' + $ServiceObject.Status