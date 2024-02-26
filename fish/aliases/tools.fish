alias tt='bash ~/tt.sh'

alias mytty='ps $(pgrep Xorg)'
alias serve='python -m SimpleHTTPServer'
alias pcolor='gpick --pick --single -o | xclip -selection clipboard'
alias miam-select='maim --select | tee ~/Pictures/Screenshots/$(date +%s).png | xclip -selection clipboard -t image/png'
alias miam-full='maim | tee ~/Pictures/Screenshots/$(date +%s).png | xclip -selection clipboard -t image/png'

alias ssselect="maim --select | tee ~/Pictures/Screenshots/$(date +%s).png | xclip -selection clipboard -t image/png"
alias ssfull="maim | tee ~/Pictures/Screenshots/$(date +%s).png | xclip -selection clipboard -t image/png"

alias snips="ssh snips.sh"
