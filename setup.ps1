# Change the execution policy first for the current user, this will allow scoop to be installed and work
Set-ExecutionPolicy RemoteSigned -scope CurrentUser

# Use the verbose version for readability
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')

# Scoop NEEDS git to operate at all, so do this first
scoop install git

# Add the extras bucket to install all of the personal apps, could add more here, newline for each thou
scoop bucket add extras

# Personal apps
scoop install firefox thunderbird 1password-cli discord teamspeak3 vlc
