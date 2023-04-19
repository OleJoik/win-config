# Windows terminal and nvim config

## Requirements

- node.js
- git
- [Starship](https://starship.rs/guide/#%F0%9F%9A%80-installation)
- [NeoVim](https://github.com/neovim/neovim/releases)
- [Download + Install FiraCode Nerd Font](https://www.nerdfonts.com/font-downloads)

    note: Right click all .ttf files and click "install" 
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [packer](https://github.com/wbthomason/packer.nvim)

## Update Terminal profile

Script being run when terminal starts

```ps
nvim $PROFILE
```

...Add the following:
```ps
$ENV::STARSHIP_CONFIG = "$HOME\config\starship\starship.toml"
$ENV::XDG_CONFIG_HOME = "$HOME\config\"
Invoke-Expression (&starship init powershell)
```

PS settings file is in this folder:
~\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState

## Starship config
starship config must be inside of `STARSHIP_CONFIG`


## nvim config
place nvim folder must be inside of `XDG_CONFIG_HOME`


## Todo
- push to [repo](https://github.com/OleJoik/nvim-config)
- pasting into terminal (Show current config + Change keybind??)
- [Emmet](https://github.com/mattn/emmet-vim)
- Lua LSP
- Fern rebinds [Demo video](https://www.youtube.com/watch?v=YpzIhRoZ-tk)
