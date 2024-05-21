'Pick the Service:'
$ServiceName = Read-Host
$ServiceObject = Get-Service -Name $ServiceName

while($ServiceObject.Status -eq 'Stopped') {
    $ServiceObject.Name + ' has the status ' + $ServiceObject.Status + ', waiting to start'

    $ServiceObject = Get-Service -Name $ServiceObject.Name

    sleep -Seconds 1
}

'Ok Service with name ' + $ServiceObject.Name + ' has Status ' + $ServiceObject.Status