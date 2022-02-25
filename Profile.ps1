$POSH_THEME_DIR="$HOME/.oh-my-posh-themes"
$POSH_THEME="ayu-owl.omp.json"
oh-my-posh --init --shell pwsh --config "$POSH_THEME_DIR/$POSH_THEME" | Invoke-Expression
Enable-PoshTransientPrompt
Set-Alias -Name sudo -Value gsudo
Set-Alias -Name vi -Value nvim
Set-Alias -Name l -Value ls
Set-Alias -Name beep -Value $HOME\Documents\WindowsPowerShell\Scripts\beep.ps1
Import-Module $HOME\Documents\WindowsPowerShell\Scripts\quickeos.ps1
clear
