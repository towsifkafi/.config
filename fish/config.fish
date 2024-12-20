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

set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin

set -x FLYCTL_INSTALL $HOME/.fly
set -x PATH $PATH $FLYCTL_INSTALL/bin:$PATH

set -gx PNPM_HOME "/home/kafi/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end

fish_add_path /home/kafi/.spicetify

# oh-my-fish stuff
# theme used: bobthefish  --> omf install bobthefish

#set -g theme_nerd_fonts yes
#set -g theme_color_scheme nord
#set -g fish_prompt_pwd_dir_length 0
#set -g theme_date_format "+%a %H:%M"
#set -g theme_display_git_default_branch yes

# aliases
source ~/.config/fish/aliases/other.fish
source ~/.config/fish/aliases/tools.fish
source ~/.config/fish/aliases/tmux.fish

source ~/.config/fish/aliases/nim.fish

alias bsend="bluetooth-sendto --device=04:44:96:94:62:61"

# inshellisense
#[ -f ~/.inshellisense/key-bindings.fish ] && source ~/.inshellisense/key-bindings.fish

# starship
starship init fish | source
zoxide init fish | source
