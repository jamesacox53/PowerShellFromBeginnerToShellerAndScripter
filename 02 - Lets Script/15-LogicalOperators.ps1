$Number1 = 1
$Number2 = 1
$Number3 = 3

if (($Number1 -eq $Number2) -and ($Number1 -eq $Number3)) {
    'And'
}

if (($Number1 -eq $Number2) -or ($Number1 -eq $Number3)) {
    'Or'
}

if (-not ($Number1 -eq $Number2)) {
    'Not'
}