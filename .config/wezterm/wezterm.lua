local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.enable_wayland = false

config.color_scheme = 'AdventureTime'

return config
