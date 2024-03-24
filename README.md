# Dot Files
This repository contains important files from my `~/.config` folder, which I share across my devices.

These configs are made for my devices. I've made them public for everyone, but please don't blindly use these configs, you might need to modify them for your use. Use them at your own risk!

## Info  - _if i ever forget how to use these_
> ### scripts
**Add this folder to path**
```
fish_add_path $HOME/.config/scripts
```
<br>

> ### fish
Install:
- [**oh-my-fish**](https://github.com/oh-my-fish/oh-my-fish)
```sh
omf install bobthefish
```

> ### rofi
- **custom/notes.sh**:
  - Keybind: `Super+n`
  - Directory to put notes in: `~/notes`
- **custom/prochot.sh**:
  - Keybind: `Super+~`
- **custom/tmux.sh**:
  - Keybind: `Super+t`


> ### neovim
 - Install this [Vim-plug](https://github.com/junegunn/vim-plug) 

> ### nano
**.nanorc** needs to be in the home directory, otherwise it won't work
```sh
ln -s $HOME/.config/nano/.nanorc $HOME/
```

> ### tmux
Before using powerline:
```sh
pip install powerline-status
```
<br>
<br>

> ### remote/**
Same configs (slightly modified) for remote machines SSH, or Terminal interaces.