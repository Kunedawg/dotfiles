local wezterm = require 'wezterm';

return {
  -- launch zsh as a login shell so it reads ~/.zprofile / ~/.zlogin
  default_prog = { "/usr/bin/zsh", "-l" },

  -- (optional) make your tabs/panes show the zsh icon:
  set_environment_variables = {
    TERM = "wezterm"
  },
}
