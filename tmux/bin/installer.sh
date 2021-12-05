#!bin/bash

echo "##### setup tmux #####"

if [ -z $(which tmux) ]; then
  echo "----- install tmux -----"
  if [ "$(uname)" == 'Darwin' ]; then
    # mac
    brew install tmux
  elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
    # linux
    yum install tmux
  fi
fi

echo "----- link tmux.conf -----"
ln -sf $(pwd)/tmux/tmux.conf ~/.tmux.conf

tmux source ~/.tmux.conf

echo "##### finish to setup tmux #####"