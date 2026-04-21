# Setup

## Tools

```txt
eza
fd
fzf
git
ghostty
lazygit
pipx
starship
stow
tmux
tree (replaced by eza)
uv
yazi
zoxide
```

deprecated/no longer needed

```txt
cursor
wezterm
```

### Mac

```bash
brew install stow fzf zoxide starship tmux
```

## Deploy dotfiles with stow

```bash
cd ~
cd dotfiles
stow ghostty starship tmux vscode zsh -t ~
```

## Tools

### ghostty

```sh
brew install --cask ghostty
```

### tmux

- Youtube Videos
  - [Tmux has forever changed the way I write code. - YouTube](https://www.youtube.com/watch?v=DzNmUNvnB04)
  - [How to Customize Tmux (20XX Edition) \| Zero Plugins - YouTube](https://www.youtube.com/watch?v=XivdyrFCV4M)
- Plugin manager
  - [GitHub - tmux-plugins/tpm: Tmux Plugin Manager · GitHub](https://github.com/tmux-plugins/tpm)
- Plugins
  - sens
- example tmux.conf
  - [tmux-btw/tmux.conf at master · tonybanters/tmux-btw · GitHub](https://github.com/tonybanters/tmux-btw/blob/master/tmux.conf)
  - [tmux/tmux.conf at main · dreamsofcode-io/tmux · GitHub](https://github.com/dreamsofcode-io/tmux/blob/main/tmux.conf)
  - [dotfiles/tmux/tmux.conf at master · omerxx/dotfiles · GitHub](https://github.com/omerxx/dotfiles/blob/master/tmux/tmux.conf)

#### commands

```sh
# new session
tmux -new -s session-name

# list sessions
tmux ls

# attach to session
tmux a session-name

# source config
tmux source ~/.tmux.config
```

#### Keybinds

| Keybind       | Action                  |
| ------------- | ----------------------- |
| `<prefix>-\|` | split pane vertically   |
| `<prefix>--`  | split pane horizontally |
| `<prefix>-c`  | create window           |
| `<prefix>-I`  | install plugins         |
| `<prefix>-s`  | view sessions           |
| `:new`        | create new session      |
| `ctrl-h`      | pane left               |
| `ctrl-l`      | pane right              |
| `ctrl-j`      | pane down               |
| `ctrl-k`      | pane up                 |

```txt
<prefix>-c
```
