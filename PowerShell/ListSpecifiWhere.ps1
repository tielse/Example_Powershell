$strComputer = "."
$wmiNS = "root\cimv2"
$strWhere = "'ipc$'"
$wmiQuery = "Select * from win32_Share where name="+$strWhere
"Properties of Share named: " + $strWhere
$objWMIServices = Get-WmiObject -computer $strComputer `
 -namespace $wmiNS -query $wmiQuery
 $objWMIServices |
 Format-List -property [a-z]*