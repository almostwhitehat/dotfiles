#!/usr/bin/env bash
set -e

install_vundle () {
  VUNDLE_PATH=~/.vim/bundle/Vundle.vim
  if [ ! -d $VUNDLE_PATH ]; then
    echo "Installing Vundle"
    git clone https://github.com/VundleVim/Vundle.vim.git $VUNDLE_PATH
  else
    echo "Vundle already installed - updating"
    cd $VUNDLE_PATH && git pull
  fi
}

install_vundle
