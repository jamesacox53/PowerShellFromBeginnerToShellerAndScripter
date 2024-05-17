$Services = Get-Service

foreach($Service in $Services) {
    'The ' + $Service.Name + ' is a great service'

    if ($Service.Name -eq 'Spooler') {
        'Wow I found the ' + $Service.Name + ' Service, really cool'
    }
}