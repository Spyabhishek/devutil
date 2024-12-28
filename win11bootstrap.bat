@echo off
:: Function to log messages
log() {
    echo [%date% %time%] %*
}

:: Install chocolatey
log "Installing Chocolatey..."
powershell -Command "Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))"
if errorlevel 1 (
    log "Failed to install Chocolatey."
    exit /b 1
)

:: Install all the packages
log "Installing packages..."
choco install git vscode docker-desktop discord wsl wsl-ubuntu-2204 vlc -y
if errorlevel 1 (
    log "Failed to install one or more packages."
    exit /b 1
)

log "Installation complete."
