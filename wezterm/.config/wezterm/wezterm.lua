-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "OneDark (base16)"
config.font = wezterm.font("JetBrainsMono Nerd Font", { weight = "Regular", italic = false })
-- disable ligatures
--config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }
config.font_size = 13
config.enable_tab_bar = false
config.window_decorations = "NONE"
config.window_padding = {
	left = 40,
	right = 40,
	top = 40,
	bottom = 40,
}
config.window_background_opacity = 0.9
config.warn_about_missing_glyphs = false

-- and finally, return the configuration to wezterm
return config
