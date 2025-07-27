-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- or, changing the font size and color scheme.
config.font_size = 20
config.font = wezterm.font('IntelOne Mono')

config.window_background_gradient = {
  orientation = 'Vertical',
  colors = {
    '#0f0c29',
    '#302b63',
    '#24243e',
  },
  interpolation = 'Linear',

  blend = 'Rgb',
}

-- Finally, return the configuration to wezterm:
return config
