local wezterm = require("wezterm")
local config = wezterm.config_builder()

---------------
--- Appearence
---------------
-- config.color_scheme = "Catppuccin Macchiato"

config.font_size = 14
config.font = wezterm.font({
	family = "CaskaydiaCove NFM",
})

---------------
--- Window
---------------
config.color_scheme = "Catppuccin"
config.window_decorations = "NONE"
config.window_padding = {
	left = 0,
	right = 0,
	top = 8,
	bottom = 0,
}
config.window_background_opacity = 0.9

config.scrollback_lines = 2000
config.enable_scroll_bar = true

config.audible_bell = "Disabled"

---------------
--- Tabbar
---------------
config.tab_max_width = 24
config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false

---------------
--- Keymaps
---------------
config.leader = { key = "Space", mods = "SHIFT", timeout_milliseconds = 2000 }

config.keys = {}

local leader_keys = {
	{ "t", wezterm.action.SpawnTab("CurrentPaneDomain") },
	{ "x", wezterm.action.CloseCurrentPane({ confirm = true }) },
	{ "H", wezterm.action.ActivateTabRelative(-1) },
	{ "L", wezterm.action.ActivateTabRelative(1) },
	{ "n", wezterm.action.ActivateLastTab },
	{ "h", wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
	{ "v", wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }) },
}

local ctrl_keys = {
	{ "h", wezterm.action.ActivatePaneDirection("Left") },
	{ "j", wezterm.action.ActivatePaneDirection("Down") },
	{ "k", wezterm.action.ActivatePaneDirection("Up") },
	{ "l", wezterm.action.ActivatePaneDirection("Right") },
	{ "LeftArrow", wezterm.action.AdjustPaneSize({ "Left", 5 }) },
	{ "RightArrow", wezterm.action.AdjustPaneSize({ "Right", 5 }) },
	{ "DownArrow", wezterm.action.AdjustPaneSize({ "Down", 5 }) },
	{ "UpArrow", wezterm.action.AdjustPaneSize({ "Up", 5 }) },
}

-- Map each key to config.keys
for _, key in ipairs(leader_keys) do
	table.insert(config.keys, {
		mods = "LEADER",
		key = key[1],
		action = key[2],
	})
end
for _, key in ipairs(ctrl_keys) do
	table.insert(config.keys, {
		mods = "CTRL",
		key = key[1],
		action = key[2],
	})
end

-- Leader + number to activate that tab (starting i from 1 following wezterm convention)
for i = 1, 8 do
	table.insert(config.keys, {
		key = tostring(i),
		mods = "LEADER",
		action = wezterm.action.ActivateTab(i - 1),
	})
end

---
return config
