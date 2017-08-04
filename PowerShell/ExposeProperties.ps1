$url = Read-Host "What is your Site's Url"
$site = Get-SPOSite $url
$members = $site | Get-Member | Where{$_.MemberType -eq "Property"}
for($i = 0; $i -lt $members.Count; $i++)
{
 $name = $members[$i].Name
 Write-Host $name":" $site.$name
}