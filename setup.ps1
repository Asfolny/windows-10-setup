# Change the execution policy first for the current user, this will allow scoop to be installed and work
Set-ExecutionPolicy RemoteSigned -scope CurrentUser

# Use the verbose version for readability
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')

# Scoop NEEDS git to operate at all, so do this first
scoop install git

# Add the extras bucket to install all of the personal apps, could add more here, newline for each thou
scoop bucket add extras

# Personal apps
scoop install firefox thunderbird 1password-cli discord teamspeak3 vlc steam winrar qbittorrent

<# Some apps will have to be acquired manually, in order of importance these are
   1. GeForce Experience (Nvidia gpu)
   2. 1Password desktop
   3. Robert Space Industries launcher
   4. Battle.net
   5. EA Origin
   6. NordVPN (could be replaced by openVPN, which is in scoop)
 #>
