$NumberToGuess = Get-Random -Minimum 1 -Maximum 6

'Please guess the number:'
[int] $Guess = Read-Host

while ($Guess -ne $NumberToGuess) {
    if ($Guess -lt $NumberToGuess) {
        'Guess again, your number ' + $Guess + ' is too low.'

    } else {
        'Guess again, your number ' + $Guess + ' is too high.'
    }
    
    'Please guess the number:'
    $Guess = Read-Host
} 

'You won, it was ' + $NumberToGuess
''
'Game Over'