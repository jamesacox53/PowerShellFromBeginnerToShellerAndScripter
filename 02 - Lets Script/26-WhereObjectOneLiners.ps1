Get-LocalUser | Where-Object {$PSItem.Enabled -eq $True} | Set-LocalUser -Description 'Enabled account'

Get-LocalUser | Where-Object {$PSItem.Enabled -eq $False} | Set-LocalUser -Description 'Disabled account'