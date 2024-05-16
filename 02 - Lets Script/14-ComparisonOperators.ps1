$Number1 = 3
$Number2 = 2

if ($Number1 -gt $Number2) {
    'Number 1 is greater than Number 2'

}

Get-Process | Where-Object {$PSItem.HandleCount -lt 100}