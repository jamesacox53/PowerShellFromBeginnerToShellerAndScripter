$NumberToGuess = Get-Random -Minimum 1 -Maximum 6

'Please guess the number:'
[int] $Guess = Read-Host

while ($Guess -ne $NumberToGuess) {
    "Guess again, that's not the number."
    
    'Please guess the number:'
    $Guess = Read-Host
} 

'You won, it was ' + $NumberToGuess
''
'Game Over'