oh-my-posh --init --shell pwsh --config $HOME/.oh-my-posh-themes/night-owl-custom.omp.json | Invoke-Expression
Enable-PoshTransientPrompt
Set-Alias -Name sudo -Value gsudo
Set-Alias -Name vi -Value nvim
Function llfunc {Get-ChildItem -Exclude .*}
Set-Alias -Name ll -Value llfunc
Set-Alias -Name l -Value llfunc
Set-Alias -Name la -Value Get-ChildItem
Remove-Alias -Name ls
Function lsfunc {Get-ChildItem -Name -Exclude .*}
Set-Alias -Name ls -Value lsfunc
Set-Alias -Name beep -Value $HOME\Documents\WindowsPowerShell\Scripts\beep.ps1
Import-Module $HOME\Documents\WindowsPowerShell\Scripts\quickeos.ps1
clear
