# test.ps1
$OutFile = "$env:USERPROFILE\Desktop\file.txt"

$Info = @()
$Info += "=== Test Script Executed ==="
$Info += "Timestamp: $(Get-Date)"
$Info += "User: $env:USERNAME"
$Info += "Computer: $env:COMPUTERNAME"
$Info += "OS Version: $(Get-CimInstance Win32_OperatingSystem | Select-Object -ExpandProperty Caption)"

$Info | Out-File -FilePath $OutFile -Encoding UTF8

Write-Host "Test script completed!"
