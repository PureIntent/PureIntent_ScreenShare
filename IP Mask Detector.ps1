$Interface_Alias = (Test-NetConnection).InterfaceAlias
$Response = (Invoke-WebRequest -UseBasicParsing -Uri "https://ip.cactive.co/api/lookup").Content | ConvertFrom-Json
Write-Host "Interface Alias: $Interface_Alias"
Write-Host "VPN Detected: $($Response.detection_vpn)"
Write-Host "Server (Non-Residential Connection) Detected: $($Response.detection_server)"
Write-Host "Mobile Connection Detected: $($Response.detection_vpn)"
Write-Host "Timezone: $($Response.time_zone)"
