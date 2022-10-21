Write-Host "Script by Chloe Arciniega (@solelychloe)" -ForegroundColor white -BackgroundColor magenta

Write-Host "Checking for permissions..." -ForegroundColor black -BackgroundColor red
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

try {
    scoop --version *>$null
    Write-Host "Scoop is already installed on your system." -ForegroundColor black -BackgroundColor Yellow
} catch {
    Write-Host "Installing Scoop..." -ForegroundColor black -BackgroundColor Yellow
    irm get.scoop.sh | iex
    Write-Host "Scoop installed." -ForegroundColor black -BackgroundColor Yellow
}

Write-Host "Updating Scoop..." -ForegroundColor black -BackgroundColor Yellow
scoop update

Write-Host "Installing Git & dependencies..." -ForegroundColor black -BackgroundColor Yellow
scoop install git

Write-Host "Adding @solelychloe's bucket..." -ForegroundColor black -BackgroundColor Yellow
scoop bucket add solely-bucket https://github.com/solelychloe/bucket

Write-Host "--- Installing chat apps... --- (1/9)" -ForegroundColor white -BackgroundColor darkcyan
scoop install discord telegram

Write-Host "--- Installing the Mozilla suite... --- (2/9)" -ForegroundColor white -BackgroundColor darkcyan
scoop install firefox thunderbird

Write-Host "--- Installing terminals... --- (3/9)" -ForegroundColor white -BackgroundColor darkcyan
scoop install powershell windows-terminal

Write-Host "--- Installing the development suite... --- (4/9)" -ForegroundColor white -BackgroundColor darkcyan
scoop install docker nodejs postgresql python vscode

Write-Host "--- Installing Steam & games... --- (5/9)" -ForegroundColor white -BackgroundColor darkcyan
scoop install minecraft steam supertuxkart

Write-Host "--- Installing the media suite... --- (6/9)" -ForegroundColor white -BackgroundColor darkcyan
scoop install ffmpeg jellyfin mpc-hc-fork spicetify-cli spotify

Write-Host "--- Installing the security suite... --- (7/9)" -ForegroundColor white -BackgroundColor darkcyan
scoop install bitwarden keybase

Write-Host "--- Installing Windows essentials... --- (8/9)" -ForegroundColor white -BackgroundColor darkcyan
scoop install everything everythingtoolbar powertoys startallback

Write-Host "--- Installing miscellaneous apps... --- (9/9)" -ForegroundColor white -BackgroundColor darkcyan
scoop install anydesk crystaldiskmark notepadplusplus obs-studio rufus sharex vim wget windirstat yt-dlp

Write-Host "Running post-install commands..." -ForegroundColor black -BackgroundColor Yellow
reg import "%USERPROFILE%\scoop\apps\7zip\current\install-context.reg"
reg import "%USERPROFILE%\scoop\apps\python\current\install-pep-514.reg"
reg import "%USERPROFILE%\scoop\apps\vscode\current\install-context.reg"
reg import "%USERPROFILE%\scoop\apps\vscode\current\install-associations.reg"
git config --global credential.helper manager-core

Write-Host "Notes:" -ForegroundColor black -BackgroundColor Yellow

Write-Host "spicetify: Make sure to set 'spotify_path' to the directory of your Spotify installation in the Spicetify config."
Write-Host "steam: Changing Steam library folder is HIGHLY recommended."
Write-Host "postgres: Use 'pg_ctl register -N PostgreSQL' to register PostgreSQL as a service."
Write-Host "dockerd: Install the 'docker' binary if you plan to use Linux containers.
`nUse 'dockerd --register-service' to register Docker as a service."
Write-Host "firefox & thunderbird: Use 'Profile Manager' for either application, select said application and then run 'about:profiles' to select the Scoop profile as default."

Write-Host "Installation complete. Exiting."
