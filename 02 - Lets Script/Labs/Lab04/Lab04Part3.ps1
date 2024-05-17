$Services = Get-Service

foreach($Service in $Services) {
    if ($Service.Name -eq 'Spooler') {
        'Wow I found the ' + $Service.Name + ' Service, really cool'
    
    } else {
        'The ' + $Service.Name + ' is a great service'
    }
}