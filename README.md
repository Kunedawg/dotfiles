# Setup

Here’s a step-by-step guide to get a modern Zsh setup with Oh My Zsh, WezTerm, zoxide, fzf and Starship on Ubuntu. You can copy-and-paste each block into your terminal.

- [Setup](#setup)
  - [Stow deploy](#stow-deploy)
    - [Stow on 7-8-2025](#stow-on-7-8-2025)
  - [Note for Cursor / Vscode](#note-for-cursor--vscode)
  - [Note for git](#note-for-git)
  - [Ubuntu](#ubuntu)
    - [Install Zsh (if you don’t already have it)](#install-zsh-if-you-dont-already-have-it)
    - [Install Oh My Zsh](#install-oh-my-zsh)
    - [Install fzf (fuzzy finder)](#install-fzf-fuzzy-finder)
    - [Install zoxide (“smarter” `cd`)](#install-zoxide-smarter-cd)
    - [Install Starship prompt](#install-starship-prompt)
      - [Install nerd font](#install-nerd-font)
    - [Install WezTerm](#install-wezterm)
      - [Launch WezTerm](#launch-wezterm)
  - [Further setup for Ubuntu in the future](#further-setup-for-ubuntu-in-the-future)
    - [Make Zsh your default shell](#make-zsh-your-default-shell)
    - [Test it](#test-it)

## Stow deploy

Each folder represents layout relative to the home directory. `zsh/.zshrc` gets mapped to `~/.zshrc`.

```bash
sudo apt install stow
```

```bash
cd ~
git clone git@github.com:Kunedawg/dotfiles.git
cd dotfiles
stow <dir> -t ~
# ex: stow zsh -t ~
```

### Stow on 7-8-2025

created backups for files

```bash
mv <file> <file>.bak-dotfiles-refactor
```

Full deploy

```bash
cd dotfiles
stow zsh bash vscode cursor -t ~
```

## Note for Cursor / Vscode

Only `settings.json` is backed up, extensions are not.

## Note for git

Full file is not synced because username and email might vary.

## Ubuntu

Main features

- oh my zsh
- starship
- fzf
- zoxide

### Install Zsh (if you don’t already have it)

```bash
sudo apt update
sudo apt install -y zsh
```

### Install Oh My Zsh

- <https://github.com/ohmyzsh/ohmyzsh>

```bash
# this will back up your existing ~/.zshrc (if any) and install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

> [!NOTE]
> Setting up this for the first time,

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

### Install WezTerm

> [!WARNING]
> Wezterm did not seem to work when I installed on Ubuntu, no idea why.

WezTerm provides an APT repo you can add:

```bash
curl -fsSL https://apt.fury.io/wez/gpg.key | sudo gpg --yes --dearmor -o /usr/share/keyrings/wezterm-fury.gpg
echo 'deb [signed-by=/usr/share/keyrings/wezterm-fury.gpg] https://apt.fury.io/wez/ * *' | sudo tee /etc/apt/sources.list.d/wezterm.list
sudo chmod 644 /usr/share/keyrings/wezterm-fury.gpg
sudo apt update
sudo apt install wezterm
```

#### Launch WezTerm

Just run:

```bash
wezterm
```

By default it’ll start a Zsh login shell. You can tweak its GUI settings at `~/.config/wezterm/wezterm.lua`—see the [WezTerm docs](https://wezfurlong.org/wezterm/config/files.html) for details.

## Further setup for Ubuntu in the future

- This will be for my future setups
- Note I tried to change default shell to zsh but details with `~/.profile` and `/etc/profile` had it a bit too difficult
- For now the setup will still be to use bash has the default shell. I can drop into zsh easily by running zsh. vscode and cursor will be setup to use zsh.
  - Since bash is still default on system, then all the login stuff should remain the same. I can figure this out later. zsh will inherit the path setup by the login of bash.
- installing wez term is still left to be done.

### Make Zsh your default shell

> [!WARNING]
> This set was done and then reversed

```bash
# verify where zsh is
which zsh
# e.g. /usr/bin/zsh
chsh -s "$(which zsh)"
```

Log out and back in (or restart your terminal) to start using Zsh by default. (i did a restart)

### Test it

1. Open a new WezTerm window.
2. Type `z` and hit Tab—fzf should fuzzy-find your recent dirs.
3. Run `starship prompt` or just watch your prompt style.

You now have a fast, modern shell on Ubuntu:

- **Zsh** with **Oh My Zsh** for sane defaults
- **zoxide** for lightning-fast `cd`s
- **fzf** for fuzzy searching everywhere
- **Starship** for a slick, language-aware prompt
- **WezTerm** as your terminal emulator

Enjoy!
