$SecureStr = ConvertTo-SecureString -String 'Password' -AsPlainText -Force

# LDAP Path
$LDAPPathStr = 'OU=test,DC=root,dc=local'

New-ASUser -Name 'test' -AccountPassword $SecureStr -Enabled $True -Path $LDAPPathStr

Get-ADUser -Identity 'test'