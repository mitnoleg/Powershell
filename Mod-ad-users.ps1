Import-Module ActiveDirectory 
$users = import-csv -Path c:\myusers.csv
foreach ($user in $users) { 
Get-ADUser -Identity $user.SamAccountName | % { Set-ADUser $_ -PasswordNeverExpires $False -CannotChangePassword $False -ChangePasswordAtLogon $true } 
}