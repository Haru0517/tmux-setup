# General
setopt auto_cd
setopt auto_pushd
setopt correct
setopt share_history
setopt hist_ignore_all_dups

#############
### alias ###
#############
## General
alias reload='exec ${SHELL} -l'
alias ...='cd ../..'

alias ls='ls -G'
alias ll='ls -hlFG'
alias la='ls -ahlFG'

alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias s="cd ~/sources"

## Always enable colored `grep` output
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

## lazygit
alias lg="lazygit"

# prompt
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
git_info='${vcs_info_msg_0_}'

zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{magenta}"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}"
zstyle ':vcs_info:git:*' formats '%F{green}%c%u(%b)%f'

PROMPT="
%F{cyan}%n@%m:%f %~ $git_info
$ "
