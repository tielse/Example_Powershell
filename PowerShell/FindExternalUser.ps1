# Prompts for the external user's login name;
$extUserName = Read-Host "External User Name?"
# Gets a list of all available site collections in the current tenant;
$sites = Get-SPOSite
# Loops through all site collections
for($i = 0; $i -lt $sites.Count; $i++)
{
 # Query the list of users for the current site collection to see if external user is in
 # there;
 $user = Get-SPOUser $sites[$i].Url | Where{$_.LoginName -like "*$extUserName"}
 if($user -ne $null)
 {
 # If the user has been found, print the site's Url he has been found in;
 Write-Host $sites[$i].Url
 }
}