#!/bin/bash

# set -x

function usage () {
    echo "use this command to contrl deluge torrent service."
    echo "usage $1 start|stop|restart"
}

function do_exec () {
    echo "executing subcommand $1"

    set -x
    sudo systemctl daemon-reload
    sudo systemctl $1 deluged
    sudo systemctl $1 deluge-web
    set +x
}

function main () {
    local subcmd=$1
    echo "subcmd = $subcmd"

    case $subcmd in
        start|stop|restart)
            do_exec $subcmd
            ;;
        
        *)
            usage
            ;;
    esac
}

main $1