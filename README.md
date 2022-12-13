# dotfiles
standard .dotfiles configuration for a standard person like me!

# How this works
This dotfiles repo is managed using [rcm](https://github.com/thoughtbot/rcm), a management suite specifically made for storing dotfiles.

**Note**: My `ncmpcpp` config uses `azlyrics` in its `lyrics_fetcher` field which may be non-functional on your version and lead to zero output. I complied `ncmpcpp` from [source](https://github.com/ncmpcpp/ncmpcpp), adding [this pull request](https://github.com/ncmpcpp/ncmpcpp/pull/544)'s additions to make it functional again.

# Software
- [`alacritty`](https://alacritty.org/) ...a modern terminal emulator that comes with sensible defaults, but allows for extensive configuration.
- [`awesome`](https://awesomewm.org/) is a highly configurable, next generation framework window manager for X
- [`ncmpcpp`](https://rybczak.net/ncmpcpp/) featureful ncurses based MPD client inspired by ncmpc
- [`nvim`](https://neovim.io/) hyperextensible Vim-based text editor

## Extra
- [`cozette`](https://github.com/slavfox/Cozette) terminal font, don't forget to install!

# Loading
1. Clone the repo into `.dotfiles`.
2. Install `rcm` using your favourite package manager on your respective distro.
```bash
# Arch User Repository with yay helper
yay -S rcm
```
3. Run `rcup -v` in any directory to create the symlinks needed for the dotfiles.
4. That's all!

# Credits
- Derek Taylor's (DistroTube) [.bashrc](https://gitlab.com/dwt1/dotfiles/-/blob/master/.bashrc)
  - ARCHIVE EXTRACTION SCRIPT
- enby prompt string: [@pilum@octodon.social](https://octodon.social/@pilum) ([post](https://octodon.social/@pilum/109364050993779997)) & [@luci@skeletons.gay](https://skeletons.gay/luci) ([post](https://skeletons.gay/notice/APhg3kERrrDlealSQy))
  - PS1 version & original idea, respectively
