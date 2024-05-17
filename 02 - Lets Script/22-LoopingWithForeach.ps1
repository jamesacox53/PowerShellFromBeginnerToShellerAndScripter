$Array = @()
$Array += 'Pete'
$Array += 'Linda'
$Array += 'John'

foreach($Item in $Array) {
    'That is a nice name ' + $Item
}