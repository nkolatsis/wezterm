local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.initial_cols = 128
config.initial_rows = 28

-- Font
config.font_size = 14
config.line_height = 1.1

-- Cursor
--
-- Not needed due to color_scheme
--config.colors = {
-- cursor_bg = 'white',
-- cursor_border = 'white',
--}

-- Appearance
config.color_scheme = "AdventureTime"
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true

-- keybindings
config.keys = {
	-- split panes
	{ key = "S", mods = "CTRL|SHIFT", action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }) },
	{ key = "O", mods = "CTRL|SHIFT", action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
	-- move between panes
	-- fix movement between tabs
	{ key = "1", mods = "CTRL|SHIFT", action = wezterm.action.ActivateTab(0) }, -- Tab 1
	{ key = '"', mods = "CTRL|SHIFT", action = wezterm.action.ActivateTab(1) }, -- Tab 2 (because Ctrl+Shift+2 = ")
	{ key = "3", mods = "CTRL|SHIFT", action = wezterm.action.ActivateTab(2) }, -- Tab 3
	{ key = "4", mods = "CTRL|SHIFT", action = wezterm.action.ActivateTab(3) }, -- Tab 4
	{ key = "5", mods = "CTRL|SHIFT", action = wezterm.action.ActivateTab(4) }, -- Tab 5
	{ key = "&", mods = "CTRL|SHIFT", action = wezterm.action.ActivateTab(5) }, -- Tab 6
	{ key = "/", mods = "CTRL|SHIFT", action = wezterm.action.ActivateTab(6) }, -- Tab 7 (Ctrl+Shift+7 = /)
	{ key = "8", mods = "CTRL|SHIFT", action = wezterm.action.ActivateTab(7) }, -- Tab 8
	{ key = "9", mods = "CTRL|SHIFT", action = wezterm.action.ActivateTab(8) }, -- Tab 9
	{ key = "0", mods = "CTRL|SHIFT", action = wezterm.action.ActivateTab(9) }, -- Tab 10
}
return config
