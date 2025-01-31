#!/bin/bash

case "${os_distro}" in
    arch)
        sudo pacman -S vim --noconfirm
        ;;
    raspbian | debian | ubuntu)
        sudo apt install vim -y
        ;;
    fedora)
        sudo dnf install vim -y
        ;;
esac

cp "${GITHUB_DIR}/config/vim/vimrc" "${HOME}/.vimrc"

# Vim plugin manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install Plugin
vim +PlugInstall +qall

yellow "vim 安装完成"
