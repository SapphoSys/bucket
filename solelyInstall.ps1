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
Write-Host "Scoop updated." -ForegroundColor black -BackgroundColor Yellow

Write-Host "Installing Git & dependencies..." -ForegroundColor black -BackgroundColor Yellow
scoop install git
Write-Host "Git & its dependencies installed." -ForegroundColor black -BackgroundColor Yellow

Write-Host "Adding @solelychloe's bucket..." -ForegroundColor black -BackgroundColor Yellow
scoop bucket add solely-bucket https://github.com/solelychloe/bucket
Write-Host "@solelychloe's bucket added." -ForegroundColor black -BackgroundColor Yellow

Write-Host "--- Installing chat apps... --- (1/9)" -ForegroundColor white -BackgroundColor darkcyan
scoop install discord telegram
Write-Host "--- Chat apps installed. --- (1/9)" -ForegroundColor white -BackgroundColor darkgreen

Write-Host "--- Installing the Mozilla suite... --- (2/9)" -ForegroundColor white -BackgroundColor darkcyan
scoop install firefox thunderbird
Write-Host "--- Mozilla suite installed. --- (2/9)" -ForegroundColor white -BackgroundColor darkgreen

Write-Host "--- Installing terminals... --- (3/9)" -ForegroundColor white -BackgroundColor darkcyan
scoop install powershell windows-terminal
Write-Host "--- Terminals installed. --- (3/9)" -ForegroundColor white -BackgroundColor darkgreen

Write-Host "--- Installing the development suite... --- (4/9)" -ForegroundColor white -BackgroundColor darkcyan
scoop install docker nodejs postgresql python vscode
Write-Host "--- Development suite installed. --- (4/9)" -ForegroundColor white -BackgroundColor darkgreen

Write-Host "--- Installing Steam & games... --- (5/9)" -ForegroundColor white -BackgroundColor darkcyan
scoop install minecraft steam supertuxkart
Write-Host "--- Stea & games installed. --- (5/9)" -ForegroundColor white -BackgroundColor darkgreen

Write-Host "--- Installing the media suite... --- (6/9)" -ForegroundColor white -BackgroundColor darkcyan
scoop install jellyfin mpc-hc-fork spicetify-cli spotify
Write-Host "--- Media suite installed. --- (6/9)" -ForegroundColor white -BackgroundColor darkgreen

Write-Host "--- Installing the security suite... --- (7/9)" -ForegroundColor white -BackgroundColor darkcyan
scoop install bitwarden keybase
Write-Host "--- Security suite installed. --- (7/9)" -ForegroundColor white -BackgroundColor darkgreen

Write-Host "--- Installing Windows essentials... --- (8/9)" -ForegroundColor white -BackgroundColor darkcyan
scoop install everything everythingtoolbar powertoys startallback
Write-Host "--- Windows Essentials installed. --- (8/9)" -ForegroundColor white -BackgroundColor darkgreen

Write-Host "--- Installing miscellaneous apps... --- (9/9)" -ForegroundColor white -BackgroundColor darkcyan
scoop install anydesk crystaldiskmark notepadplusplus obs-studio rufus sharex vim wget windirstat yt-dlp
Write-Host "--- Miscellaneous apps installed. --- (9/9)" -ForegroundColor white -BackgroundColor darkgreen

Write-Host "Installation complete. Exiting."
