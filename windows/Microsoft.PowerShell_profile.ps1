start-transcript -Path C:\Users\abhik\Documents\PowerShellTranscript\POWERSHELL.txt -Append

# Set Root Folder
Set-Location C:\Users\abhik\Documents\dev-env

# Functions
## Easy Navigation
function .. { Set-Location .. }
function ... { Set-Location ../.. }
function home { Set-Location $HOME }
function code { Set-Location $HOME/Documents/dev-env }
function dl { Set-Location $HOME/Downloads }
function dc { Set-Location $HOME/Documents }
function chrome { Start-Process -FilePath "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" }
function web { cmd.exe /c start chrome $args[0] }
function killweb { Stop-Process -ProcessName chrome }
function clearb { Clear-RecycleBin -Force }
function search { 
    $query = 'https://www.google.com/search?q=' 
    $args | ForEach-Object { $query = $query + "$_+" }
    $url = $query.Substring(0, $query.Length - 1) 
    web "$url" 
}
function path { $($env:path).split(";") }

. C:\Users\abhik\Documents\dev-env\powershell\GitAutomation\New-Repo.ps1
. C:\Users\abhik\Documents\dev-env\powershell\ObsidianAutomation\Sync-IcloudToLocal.ps1

