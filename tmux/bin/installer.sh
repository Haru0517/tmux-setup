# install tmux
if [ -z $(which tmux) ]; then
  if [ "$(uname)" == 'Darwin' ]; then
    # mac
    brew install tmux
  elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
    # linux
    yum install tmux
  fi
fi

# link tmux.conf
ln -sf $(pwd)/tmux/tmux.conf ~/.tmux.conf

tmux source ~/.tmux.conf
