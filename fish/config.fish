source /usr/share/cachyos-fish-config/cachyos-config.fish

# terminal title
function fish_title
    if [ $_ = 'fish' ]
        echo (prompt_pwd)
    else
        echo $_
    end
end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# oh-my-fish stuff
# theme used: bobthefish  --> omf install bobthefish

set -g theme_nerd_fonts yes
set -g theme_color_scheme nord
set -g fish_prompt_pwd_dir_length 0
set -g theme_date_format "+%a %H:%M"
set -g theme_display_git_default_branch yes

set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin

# aliases
alias vim='nvim'
alias fix-sound='systemctl --user restart pipewire.service'

alias lstree='eza -aT --color=always --group-directories-first --icons'
alias ls='eza -a --color=always --group-directories-first --icons'
alias ll='eza -l --color=always --group-directories-first --icons'
alias grep='grep --color=auto -i'
#alias mkdir='mkdir -p'
alias cp='cp -i'
alias mv='mv -i'
alias history='history | nl'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias tt='bash ~/tt.sh'

alias mytty='ps $(pgrep Xorg)'
alias serve='python -m SimpleHTTPServer'
alias pcolor='gpick --pick --single -o | xclip -selection clipboard'
alias miam-select='maim --select | tee ~/Pictures/Screenshots/$(date +%s).png | xclip -selection clipboard -t image/png'
alias miam-full='maim | tee ~/Pictures/Screenshots/$(date +%s).png | xclip -selection clipboard -t image/png'

# inshellisense
#[ -f ~/.inshellisense/key-bindings.fish ] && source ~/.inshellisense/key-bindings.fish
