$NumberToGuess = Get-Random -Minimum 1 -Maximum 6
[int] $Tries = 3

'Please guess the number, you have ' + $Tries + ' tries'
[int] $Guess = Read-Host
[int] $NumTried = 1

while (($Guess -ne $NumberToGuess) -and ($NumTried -lt $Tries)) {
    $TriesLeft = $Tries - $NumTried
    $TriesLeftStr = ''

    if ($TriesLeft -eq 1) {
        $TriesLeftStr = 'This is your last try.'

    } elseif ($TriesLeft -gt 1) {
        $TriesLeftStr = 'You have ' + $TriesLeft + ' tries left.'
    }


    if ($Guess -lt $NumberToGuess) {
        'Guess again, your number ' + $Guess + ' is too low. ' + $TriesLeftStr

    } else {
        'Guess again, your number ' + $Guess + ' is too high. ' + $TriesLeftStr
    }
    
    'Please guess the number:'
    $Guess = Read-Host

    $NumTried = $NumTried + 1
}

if ($Guess -eq $NumberToGuess) {
    'You won, it was ' + $NumberToGuess + '. Guessed in ' + $NumTried + '!'

} else {
    'You lose.'
}

''
'Game Over'