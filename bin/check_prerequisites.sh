#!/bin/bash

function check_cmd() {
    if command -v "$1">/dev/null
    then
        echo "$1 ... available"
    else
        echo "$1 ... NOT available"
    fi
}

<<<<<<< HEAD
cmds=("tmux" "vim" "unar" "docker" "shellcheck" "java" "python" "ruby")
=======
cmds=("tmux" "vim" "unar" "docker" "shellcheck" "java" "python" "ruby" "perl")
>>>>>>> minor changes

function main() {

    for cmd in "${cmds[@]}"; do
        check_cmd "$cmd"
    done
}

main