$strCLass = "organizationalUnit"
$StrOUName = "ou=MyTestOU"
$objADSI = [ADSI]"LDAP://dc=nwtraders,dc=msft"
$objOU = $objADSI.create($strCLass, $StrOUName)
$objOU.setInfo()