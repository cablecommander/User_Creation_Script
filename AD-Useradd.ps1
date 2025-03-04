# User Creation Tool
# Last Updated March 4 2025

#Title
Write-Host "`nUSER CREATION TOOL" -ForegroundColor Yellow -BackgroundColor Black

#Variables
$1stName = Read-Host -Prompt "`nEnter first name "
$lastName = Read-Host -Prompt "`nEnter lastname name "
$username = $1stName.Substring(0, 1) + $lastName
$Password = $1stName.Substring(0, 1) + $lastName.Substring(0, 1) + "YourDC@2025!"
$displayName = "$1stName $lastName"
$samaccountname = ($1stName.Substring(0, 1) + $lastName).ToLower()

#User Creation 
New-AdUser `
-Name "$1stName $lastName" `
-Surname $lastName `
-GivenName $1stName `
-DisplayName $displayName `
-sAMAccountName $samaccountname `
-UserPrincipalName "$username@YourDC.local" `
-AccountPassword(ConvertTo-SecureString $Password -AsPlainText -Force) `
-path "CN=Users,DC=YourDC,DC=local" `
-ChangePasswordAtLogon $true

#Enables User Acccount
Enable-ADAccount -Identity $samaccountname

#Outputs Username & Password. Sends output to Clipboard for easy retrieval
$output = "`nUsername: $samaccountname `nPassword: $Password `n(Will need changed at next login)"
Write-Host $output

Set-Clipboard -Value $output

Write-Host "Username and password were copied to Clipboard"

#Keeps Window Open
Read-Host -Prompt "Press Enter to exit"
