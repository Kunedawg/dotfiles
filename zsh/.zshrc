# -------- zsh/.zshrc --------
# Use Homebrew zsh first (mac)
export PATH="/usr/local/bin:$PATH"

# Tell starship to hook into zsh
eval "$(starship init zsh)"

# sensible options
setopt AUTO_CD # just `foo` to cd into ./foo
autoload -Uz compinit && compinit

# host-specific tweaks (only if you’ve created ~/.mac-zsh)
if [[ "$(uname)" == "Darwin" && -f ~/.mac-zsh ]]; then
  source ~/.mac-zsh
fi

# -----------------------------
