# Prompt the user to enter the name of the app to check for instances of
$appTitle = Read-Host "What is the name of your app?"
# Get a reference to the Web Application on port 80
$webApp = Get-SPWebApplication http://localhost
# Loop through all site collections in the Web Aplication
foreach($site in $webApp.Sites)
{
 # Loop through each Web in the current site collection
 foreach($web in $site.AllWebs)
 {
 # Query the current site for an instance of our app
 $appInstance = Get-SPAppInstance -Web $web.Url |
 Where {$_.Title -like "*$appTitle*"}
 # If the appInstance variable is not null, then an instance was found
 if($appInstance -ne $null)
 {
 Write-Host $web.Url -BackgroundColor "green"
 }
 $web.Dispose()
 }
 $site.Dispose()
}