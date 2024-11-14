alias tt='bash ~/tt.sh'

alias mytty='ps $(pgrep Xorg)'
alias serve='python -m SimpleHTTPServer'

# colorpicker
alias pcolor='gpick --pick --single -o | xclip -selection clipboard'

# screnshot
alias miam-select='maim --select | tee ~/Pictures/Screenshots/$(date +%s).png | xclip -selection clipboard -t image/png'
alias miam-full='maim | tee ~/Pictures/Screenshots/$(date +%s).png | xclip -selection clipboard -t image/png'

alias ssselect="maim --select | tee ~/Pictures/Screenshots/$(date +%s).png | xclip -selection clipboard -t image/png"
alias ssfull="maim | tee ~/Pictures/Screenshots/$(date +%s).png | xclip -selection clipboard -t image/png"

# snips.sh
alias snips="ssh snips.sh"

# ai & markdown
alias md='glow'
alias summarize='fabric --stream --pattern summarize | glow'

# otp codes
alias otp='lssecret -s | grep otpauth:// | sed "s/Secret:\t//g" | topt --table'
