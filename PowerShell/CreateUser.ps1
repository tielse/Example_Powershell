$strCLass = "User"
$StrName = "CN=MyNewUser"
$objADSI = [ADSI]"LDAP://ou=myTestOU,dc=nwtraders,dc=msft"
$objUser = $objADSI.create($strCLass, $StrName)
$objUser.Put("sAMAccountName", "MyNewUser")
$objUser.setInfo()