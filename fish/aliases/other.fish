alias vim='nvim'
alias fix-sound='systemctl --user restart pipewire.service'

alias lstree='eza -aT --color=always --group-directories-first --icons'
alias ls='eza -a --color=always --group-directories-first --icons'
alias ll='eza -l --color=always --group-directories-first --icons'
alias grep='grep --color=auto -i'
#alias mkdir='mkdir -p'

# update arch repo mirrors
alias upmirrors='rate-mirrors arch | sudo tee /etc/pacman.d/mirrorlist'

alias cp='cp -i'
alias mv='mv -i'
alias history='history | nl'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'
