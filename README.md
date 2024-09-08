# Dot Files
This repository contains important files from my `~/.config` folder, which I share across my devices.

These configs are made for my devices. I've made them public for everyone, but please don't blindly use these configs, you might need to modify them for your use. Use them at your own risk!

## 🛟 Help  - _if i ever forget how to use these_
> ### scripts
**Add this folder to path**
```
fish_add_path $HOME/.config/scripts
```

> ### fish
Install:
- [**starship**](https://starship.rs/)

> ### rofi
- **custom/notes.sh**:
  - Keybind: `Super+n`
  - Directory to put notes in: `~/notes`
- **custom/prochot.sh**:
  - Keybind: `Super+~`
- **custom/tmux.sh**:
  - Keybind: `Super+t`


> ### neovim
 - Install [Vim-plug](https://github.com/junegunn/vim-plug). Then `:PlugInstall`

> ### nano
**.nanorc** needs to be in the home directory, otherwise it won't work
- https://github.com/scopatz/nanorc (Syntax Highlighting)
```sh
ln -s $HOME/.config/nano/.nanorc $HOME/
```

> ### tmux
Before using powerline:
```sh
pip install powerline-status
```
> ### zellij
Alternative to tmux. Zellij plugins:
- [monocle](https://github.com/imsnif/monocle) - for fuzzy search
- [room](https://github.com/rvcas/room) - quick search & tab switching
- [zellij_forgot](https://github.com/karimould/zellij-forgot) - keybinds help menu
- [zjstatus](https://github.com/dj95/zjstatus) - status bar for zellij

<br>

> ### remote/**
Configs (slightly modified) for remote machines (SSH), or Terminal interaces.