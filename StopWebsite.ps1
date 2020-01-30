$Website = "GT-ComplyRite_MasterData"
$WebsiteStatus = (Get-WebsiteState -Name $Website).value
if(!($WebsiteStatus -eq 'Stopped')){
Stop-Website -Name $Website
}
$WebAppPoolStatus = (Get-WebAppPoolState -Name $Website).value
if(!($WebAppPoolStatus -eq 'Stopped')){
Stop-WebAppPool -Name $Website
}
