$Date = Get-Date

while($Date -ne 'Monday') {
    'It is still ' + $Date.DayOfWeek

    sleep -Seconds 1

    $Date = Get-Date
}

'It is Monday'