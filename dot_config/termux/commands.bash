alias trs='termux-reload-settings'
alias utrs='chezmoi update && trs'

op() {
    ssh -t win 'powershell.exe -NoLogo -NoExit -Command "psmux new -A -s work"'
}
