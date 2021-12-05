#!bin/bash

echo "##### uninstall tmux #####"

echo "----- unlink tmux.conf -----"
unlink ~/.tmux.conf&>/dev/null

if [ -n $(which tmux) ]; then
  echo "----- uninstall tmux -----"
  brew uninstall tmux
fi

echo "##### finish to uninstall tmux #####"
