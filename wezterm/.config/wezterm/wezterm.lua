-- -------- wezterm.lua --------
local wezterm = require 'wezterm'
local config  = wezterm.config_builder()

-- cross-platform sensible defaults
config.font = wezterm.font_with_fallback({"JetBrains Mono", "Menlo", "FiraCode Nerd Font"})
config.font_size = 12.0
config.enable_tab_bar = false

-- per-OS tweak
if wezterm.target_triple:find("darwin") then
  config.adjust_window_size_when_changing_font_size = false
end

return config
-- -----------------------------

