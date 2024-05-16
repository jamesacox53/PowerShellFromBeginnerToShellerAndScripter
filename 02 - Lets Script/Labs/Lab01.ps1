# 1.
'PowerShell'
'PowerShell'
'PowerShell'

# 2.
'What is your name?'
$Name = Read-Host

'Welcome ' + $Name

# 3.
'Please input the name of the service you want to see on screen:'
$ServiceName = Read-Host

Get-Service -Name $ServiceName