$SalesUsers = Get-ADUser -Filter * -Properties 'Department' | Where-Object {$PSItem.department -eq 'sales'}

$SalesUsers | Move-ADObject -TargetPath 'OU=moved,DC=root,dc=local'