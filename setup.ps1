# Change the execution policy first for the current user, this will allow scoop to be installed and work
Set-ExecutionPolicy RemoteSigned -scope CurrentUser

# Use the verbose version for readability
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
