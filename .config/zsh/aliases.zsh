# Colors
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Directory stuff
alias ll='ls -alhF'
alias ..='cd ..'

# Git aliases shortcuts
alias gst='git status'
alias ga='git add'
alias gc='git commit'
alias gco='git checkout'
alias gp='git push'
alias gl='git log'
alias gpl='git pull'

# Vim
alias vim="nvim"
alias vi="nvim"

# docker
alias dockRr='docker rm $(docker ps -a -q)'
alias dockps='docker ps'
alias dockstats='docker stats $(docker ps -q)'

# prettify json
alias prettyjson='python -m json.tool'
