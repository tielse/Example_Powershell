Improt-Module ActiveDirectory
$users = $you = $null
$users = Get-ADUser -SearchBase "ou=testou,dc=tielse,dc=com" -filter * `
 -property description
 ForEach($user in $users)
 {
 if([string]::isNullOrEmpty($user.description))
 {
 "modifying $($user.name)"
 $you++
 }
 }
 "modified $you users"
 