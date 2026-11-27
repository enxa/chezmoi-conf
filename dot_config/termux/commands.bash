alias trs='termux-reload-settings'

op() {
    ssh -t win 'psmux new -A -s work'
}
