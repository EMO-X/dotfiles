eval "$(starship init zsh)"
alias ls='ls --color=auto'
# History config
HISTSIZE=2000
SAVEHIST=2000
HISTFILE=~/.zsh_history
setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
