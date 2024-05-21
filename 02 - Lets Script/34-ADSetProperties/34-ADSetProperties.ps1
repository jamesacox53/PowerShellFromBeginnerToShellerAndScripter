Set-ADUser -Identity 'SAM Account Name' -UserPrincipalName 'test4@root.local'

Get-ADUser -Identity 'SAM Account Name'

Get-ADUser -Identity 'SAM Account Name' | Set-ADUser -Department 'Sales'

Get-ADUser -Identity 'SAM Account Name' -Properties *