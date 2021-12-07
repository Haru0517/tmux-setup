# General
setopt auto_cd
setopt auto_pushd
setopt correct
setopt share_history
setopt hist_ignore_all_dups

# alias
alias ls='ls -G'
alias ll='ls -hlFG'
alias la='ls -ahlFG'

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
