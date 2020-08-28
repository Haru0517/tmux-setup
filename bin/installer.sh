#!bin/bash

echo "##### setup tmux #####"

if [ -z $(which tmux) ]; then
  echo "----- install tmux -----"
  brew install tmux
fi

echo "----- link tmux.conf -----"
ln -sf $(pwd)/tmux.conf ~/.tmux.conf

tmux source ~/.tmux.conf

echo "##### finish to setup tmux #####"