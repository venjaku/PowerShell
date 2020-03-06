<#
Script: Basic System Information
Author: Thommck & Venkatesh Vanjaku
Date: 6th March, 2020
#>

$computerSystem = Get-CimInstance CIM_ComputerSystem
$computerBIOS = Get-CimInstance CIM_BIOSElement
$Other = Get-CimInstance Win32_OperatingSystem
$computerOS = Get-CimInstance CIM_OperatingSystem
$computerCPU = Get-CimInstance CIM_Processor
$computerHDD = Get-CimInstance Win32_LogicalDisk -Filter "DeviceID = 'C:'"
Clear-Host

Write-Host "### PowerShell System Enumeration Script ###"
"`n"
Write-Host "[+] System Name: " $computerSystem.Name

"[+] Manufacturer: " + $computerSystem.Manufacturer

"[+] Model: " + $computerSystem.Model

"[+] Serial Number: " + $computerBIOS.SerialNumber

"[+] CPU: " + $computerCPU.Name

"[+] Storage Capacity: "  + "{0:N2}" -f ($computerHDD.Size/1GB) + "GB"

"[+] Storage Space: " + "{0:P2}" -f ($computerHDD.FreeSpace/$computerHDD.Size) + " Free (" + "{0:N2}" -f ($computerHDD.FreeSpace/1GB) + "GB)"

"[+] RAM: " + "{0:N2}" -f ($computerSystem.TotalPhysicalMemory/1GB) + "GB"

"[+] OS: " + $computerOS.caption + ", Service Pack: " + $computerOS.ServicePackMajorVersion

"[+] OS Architecture: " + $Other.OSArchitecture

"[+] OS Installation Date: " + $Other.InstallDate

"[+] Current User: " + $computerSystem.UserName

"[+] Last Reboot: " + $computerOS.LastBootUpTime

"`n"
Read-Host -Prompt "Press Enter to exit"
