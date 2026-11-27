alias trs='termux-reload-settings'

op() {
    ssh -t win 'powershell.exe -NoLogo -NoExit -Command "psmux new -A -s work"'
}
