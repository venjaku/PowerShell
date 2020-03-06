<# Printing User Input & Date in PowerShell #>

$User = Read-Host -Prompt 'Enter your name'
$Date = Get-Date
Write-Host "Hello '$User'"
Write-Host "Current Date & Time is '$Date'"
"`n"
Read-Host -Prompt "Press Enter to exit"
