$strComputer = "."
$wmiNS = "root\cimv2"
$wmiQuery = "Select name from win32_Share where name > 'd'"
$objWMIServices = Get-WmiObject -computer $strComputer `
 -namespace $wmiNS -query $wmiQuery
 $objWMIServices | Sort-Object -property name |
 Format-List -property name