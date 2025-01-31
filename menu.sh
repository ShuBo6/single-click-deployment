#!/bin/bash

function show_menu() {
    green "==============================="
    green "  Linux 常用工具 一键安装脚本  "
    green "==============================="

    green " 1. 安装开发环境 "
    green " 2. 安装 nerd font (Jetbrains Mono, CascadiaCode) "
    green " 3. 安装 z.lua "
    green " 4. 安装 vim "
    green " 5. 安装 ranger "
    green " 6. 安装 docker "
    green " 7. 安装 oh-my-zsh "
    green " 0. 退出 "
    echo
}

function list_soft() {
    read -p " 请输入数字：" input_number
    case "${input_number}" in
        1)
            blue "安装开发环境"
            install_golang
            install_lua
            ;;
        2)
            blue "安装 nerd font"
            install_font
            ;;
        3)
            blue "安装 z.lua"
            install_z_lua
            ;;
        4)
            blue "安装 vim"
            install_vim
            ;;
        5)
            blue "安装 ranger"
            install_ranger
            ;;
        6)
            blue "安装 docker"
            install_docker
            ;;
        7)
            blue "安装 oh-my-zsh"
            install_omz
            ;;
        0)
            source "${PWD}/hook/postinstall.sh"
            exit 0
            ;;
        *)
            red "输入有误"
            ;;
    esac
}

function main() {
    while true ; do
        show_menu
        list_soft
    done
}

source "${PWD}/hook/preinstall.sh"

main
