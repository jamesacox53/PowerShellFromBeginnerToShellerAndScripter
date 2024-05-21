'Guess the number 1 or 2'
[int] $Guess = Read-Host

$NumberToGuess = Get-Random -Minimum 1 -Maximum 3

if ($Guess -eq $NumberToGuess) {
    'You won, it was ' + $NumberToGuess

} else {
    'You lost, sorry it was ' + $NumberToGuess
}

''
'Game Over'