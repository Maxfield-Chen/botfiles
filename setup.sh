#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu" ]]; then
  # ...
elif [[ "$OSTYPE" == "darwin"* ]]; then
  # Mac OSX
  echo "Configuring for OSX..."
  echo "Install Brew"
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  echo "Install tmux"
  brew install tmux
  echo "Remember to enable meta as option in terminal preferences"
  echo "Also do a C-t I when you get in tmux to download all packages :)"
elif [[ "$OSTYPE" == "cygwin" ]]; then
  # POSIX compatibility layer and Linux environment emulation for Windows
elif [[ "$OSTYPE" == "msys" ]]; then
  # Lightweight shell and GNU utilities compiled for Windows (part of MinGW)
elif [[ "$OSTYPE" == "win32" ]]; then
  # I'm not sure this can happen.
elif [[ "$OSTYPE" == "freebsd"* ]]; then
  # ...
else
  # Unknown.
fi
cp -R .tmux ~/
cp ./.tmux.conf ~/.tmux.conf
echo "Copied Tmux Configuration..."

echo "installing vundle..."
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

