$Services = Get-Service

foreach($Service in $Services) {
    'The ' + $Service.Name + ' is a great service'
}