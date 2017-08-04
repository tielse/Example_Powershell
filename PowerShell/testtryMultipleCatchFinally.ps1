$obj1 = "BadObject"
"Begin test ..."
$ErrorActionPreference = "stop"
Try
 {
 "`tAttempting to create new object $obj1 ..."
 $a = new-object $obj1
 "Members of the $obj1"
 "New object $obj1 created"
 $a | Get-Member
 }
Catch [System.Management.Automation.PSArgumentException]
 {
 "`tObject not found exception. `n`tCannot find the assembly for $obj1"
 }
Catch [system.exception]
 {
 "Did not catch argument exception."
 "Caught a generic system exception instead"
 }
Finally
 {
 "end of script"
 }