# git
sh ./git/bin/installer.sh

# zsh
sh ./zsh/bin/installer.sh

# tmux
sh ./tmux/bin/installer.sh

# vim
sh ./vim/bin/installer.sh

# macos
if [ "$(uname)" == 'Darwin' ]
then
    sh ./macos/bin/installer.sh
fi
