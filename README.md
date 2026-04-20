# Setup

## Install

### ghostty

```sh
brew install --cask ghostty
```

### tmux

- [Tmux has forever changed the way I write code. - YouTube](https://www.youtube.com/watch?v=DzNmUNvnB04)
- [GitHub - tmux-plugins/tpm: Tmux Plugin Manager · GitHub](https://github.com/tmux-plugins/tpm)

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

### Mac

```bash
brew install zsh stow starship tmux
```

#### Todos

- [ ] iterm2 setup
- [ ] vscode

## Deploy Config

```bash
cd ~
cd dotfiles
stow starship tmux vscode zsh -t ~
```

## Deprecated

- wezterm
