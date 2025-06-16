# dotfiles

<img src="https://freesvg.org/img/1535649195.png" width="100" height="100" alt="dotfiles" />

My personal dotfiles for neovim, ghostty, tmux, and more.

Maintained using [GNU Stow](https://www.gnu.org/software/stow/)

## Usage

- Clone repo locally
- `stow` a package to sync it with your configs.

#### Example

`nvim` is a folder at the root of `dotfiles` repo, so it is a stowable package.

```sh
$ git clone git@github.com:rrojan/dotfiles.git
```

```sh
$ cd dotfiles
```

```sh
$ stow nvim
```

Stow will then symlink `nvim/.config/nvim` to `~/.config/nvim`.
Here `nvim` is the package name and `.config/nvim` is the path in your `$HOME` where the symlink is created.

## Goto tools

What I use from these dotfiles that are (currently) essential to my workflow:

- Neovim
- Neovide
- ~~Wezterm~~ Ghostty
- tmux
- Obsidian
- skhd
- Custom keybindings in Keychron V10 with QMK (`qmk/keychron-v10.json`)
