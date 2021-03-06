Function Get-Choice
{
 $caption = "Please select the computer to query"
 $message = "Select computer to query"
 $choices = [System.Management.Automation.Host.ChoiceDescription[]] `
 @("&loopback", "local&host", "&127.0.0.1")
 [int]$defaultChoice = 0
 $choiceRTN = $host.ui.PromptForChoice($caption,$message, $choices,$defaultChoice)
 switch($choiceRTN)
 {
 0 { "loopback" }
 1 { "localhost" }
 2 { "127.0.0.1" }
 }
} #end Get-Choice function
#Get-WmiObject -class win32_bios -computername (Get-Choice)