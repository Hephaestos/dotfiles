oh-my-posh --init --shell pwsh --config $HOME/night-owl-custom.omp.json | Invoke-Expression
Enable-PoshTransientPrompt
Set-Alias -Name vi -Value nvim
Set-Alias -Name sudo -Value gsudo
Set-Alias -Name l -Value ls
Set-Alias -Name beep -Value ~\Documents\WindowsPowerShell\Scripts\beep.ps1
Import-Module ~\Documents\WindowsPowerShell\Scripts\quickeos.ps1
clear
