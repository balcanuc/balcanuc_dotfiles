#!/bin/bash

function check_cmd() {
    if command -v "$1">/dev/null
    then
        echo "$1 ... available"
    else
        echo "$1 ... NOT available"
    fi
}

function print_os_specifics() {
    echo "uname output"
    uname --all
    echo "hostname"
    hostname
    echo "free output"
    free
    echo "df output"
    df -h
    echo "groups output"
    groups
}

cmds=("tmux" "vim" "unar" "docker" "shellcheck" "java" "python" "ruby" "perl" "bc" "jq" "git")

function probe_binary_existence() {
    for cmd in "${cmds[@]}"; do
        check_cmd "$cmd"
    done
}

function main() {
    print_os_specifics
    probe_binary_existence
}

main