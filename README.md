# dotfiles-gentoo-redcore
My big tower, "sparky", runs Redcore Linux with these dotfiles

# TL;DR
I've used i3, bspwm, hyprland, and other desktop window tiiling frameworks, but in terms of the best X11 experience I can find, KDE is still the best imo.
With the right key-bindings, autostart programs, custom shortcuts, and customizations, there really isn't anything you can't do with KDE.

## Technologies Used:
- KDE (Desktop Environment)
- [Alacritty](https://github.com/alacritty/alacritty)
- [Zellij](https://github.com/zellij-org/zellij)
- [Pueue](https://github.com/Nukesor/pueue)
- [Runst](https://github.com/orhun/runst)
- [Jellyfin Desktop Player](https://github.com/jellyfin-archive/jellyfin-desktop)
- [Helix Editor](https://github.com/helix-editor/helix)
- [Neovim](https://github.com/neovim/neovim)
- [Vim.nox](https://github.com/vim/vim)
- [ImHex](https://github.com/WerWolv/ImHex)
- [Eww (aka Elkowar's Whacky Widgets)](https://github.com/elkowar/eww)

### TODO: Glammour shots

### Installation

I'm going to assume that you already have `cargo` installed with a Rust version of at least 1.70+. It will be needed for the following:

- [ petname ]()
- [ rtx-cli for jellyfin]()

## Helpful Setup Info
### Helix
> Getting helix to work for Rust on my machine was a major pain. To get it working, there's a hack involving `codelldb`. See [rust.language.debugger](https://github.com/dmgolembiowski/dotfiles-gentoo-redcore/blob/21d6a87b7886f5f51320e96357db628d955e7f5d/.config/helix/languages.toml#L191)
