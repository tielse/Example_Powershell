$value= Read-Host "Hello. I am 'TiElse'"
if($value -clike "TiElse"){
    Write-Host "True"
}
else{
    Write-Host "False"
}