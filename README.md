# Windows Ubuntu WSL Setup

Here’s a step-by-step guide to get a modern Zsh setup with Oh My Zsh, WezTerm, zoxide, fzf and Starship on Ubuntu. You can copy-and-paste each block into your terminal.

- [Windows Ubuntu WSL Setup](#windows-ubuntu-wsl-setup)
  - [Stow deploy](#stow-deploy)
  - [Note for Cursor / Vscode](#note-for-cursor--vscode)
  - [Note for git](#note-for-git)
  - [Ubuntu](#ubuntu)
    - [Install fzf (fuzzy finder)](#install-fzf-fuzzy-finder)
    - [Install zoxide (“smarter” `cd`)](#install-zoxide-smarter-cd)
    - [Install Starship prompt](#install-starship-prompt)
      - [Install nerd font](#install-nerd-font)

## Stow deploy

Each folder represents layout relative to the home directory. `zsh/.zshrc` gets mapped to `~/.zshrc`.

```bash
sudo apt install stow
```

back up files before stowing

```bash
mv <file> <file>.bak
```

```bash
cd ~
git clone git@github.com:Kunedawg/dotfiles.git
cd dotfiles
stow <dir> -t ~
# ex: stow bash -t ~
```

## Note for Cursor / Vscode

Only `settings.json` is backed up, extensions are not.

## Note for git

Full file is not synced because username and email might vary.

## Ubuntu

Main features

- starship
- fzf
- zoxide

### Install fzf (fuzzy finder)

- <https://github.com/junegunn/fzf>

Ubuntu’s repo:

```bash
sudo apt install -y fzf
```

Or, if you want the latest with shell integration:

```bash
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install   # answer y to all prompts
```

### Install zoxide (“smarter” `cd`)

- <https://github.com/ajeetdsouza/zoxide>
- <https://www.youtube.com/watch?v=aghxkpyRVDY&ab_channel=DreamsofAutonomy>

The easiest way is via the install script:

```bash
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
```

This will drop a small binary into `~/.local/bin` by default. Make sure that’s in your `$PATH`.

add this to `.zshrc`

```bash
eval "$(zoxide init zsh)"
```

### Install Starship prompt

```bash
curl -sS https://starship.rs/install.sh | sh
```

add this to `.zshrc`

```bash
eval "$(starship init zsh)"
```

#### Install nerd font

Go here: <https://www.nerdfonts.com/> and install a nerd font. I picked "Hack Nerd Font". Just download and then open files and hit install on the native window that pops up. Takes a little bit of time to install. You can do them all at once.
