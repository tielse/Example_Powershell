$obj1 = "Bad.Object"
"Begin test"
Try
 {
 "`tAttempting to create new object $obj1"
 $a = new-object $obj1
 "Members of the $obj1"
 "New object $obj1 created"
 $a | Get-Member
 }
Catch [system.exception]
 {
 "`tcaught a system exception"
 }
Finally
 {
 "end of script"
 }