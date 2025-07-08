# -------- zsh/.zshrc --------
# Use Homebrew zsh first (mac)
export PATH="/usr/local/bin:$PATH"

# Tell starship to hook into zsh
eval "$(starship init zsh)"

# Example sensible options
setopt AUTO_CD      # just `foo` to cd into ./foo
setopt NO_BACKUP    # don’t create `foo~` files
autoload -Uz compinit && compinit

# host-specific tweaks
if [[ "$(uname)" == "Darwin" ]]; then
  source ~/.mac-zsh   # you can create ~/.mac-zsh in backup-mac if you want
fi
# -----------------------------
