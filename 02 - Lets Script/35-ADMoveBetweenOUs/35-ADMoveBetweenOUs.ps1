New-ADOrganizationalUnit -Name 'moved'

Move-ADObject -Identity "CN=test3,OU=Test,DC=Root,DC=Local" -TargetPath "OU=moved,DC=root,DC=local"