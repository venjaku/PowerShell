<# Executing ipconfig and saving the results in the current path #>

ipconfig > IPConfig.txt

Write-Host "IPConfig.txt file created succesfully"

"`n"
Read-Host -Prompt "Press Enter to exit"
