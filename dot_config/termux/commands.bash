alias trs='termux-reload-settings'
alias utrs='chezmoi update && trs'

op() {
    ssh -t win 'powershell.exe -NoLogo -NoExit -Command "psmux new -A -s work"'
}

paseo() {
    local usage='paseo status    查看电脑上的 Paseo 状态
paseo start     启动电脑上的 Paseo 后台
paseo stop      停止电脑上的 Paseo 后台'

    case "$#:${1-}" in
        0:) printf '%s\n' "$usage" ;;
        1:status|1:start|1:stop)
            ssh -T win "D:\\Paseo\\resources\\bin\\paseo.cmd daemon $1"
            ;;
        *)
            printf '%s\n' "$usage" >&2
            return 2
            ;;
    esac
}
