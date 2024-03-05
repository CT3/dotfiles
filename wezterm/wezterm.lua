local wezterm = require("wezterm")
return {
	-- option	= value	, [default] comment

	-- Fonts
	font = wezterm.font("FiraCode Nerd Font Mono"), -- [JetBrains Mono]
	-- font  	= wezterm.font("JetBrains Mono", {weight="Bold",italic=true})	, -- [JetBrains Mono] Name with parameters
	font_size = 11.0, -- [12.0]

	-- Colors
	color_scheme = "Gruvbox Material (Gogh)",
	--color_scheme = 'Gruvbox Dark (Gogh)',
	--
	-- Appearance
	window_background_opacity = 0.7,
	hide_tab_bar_if_only_one_tab = true, -- [false] hide the tab bar when there is only a single tab in the windowa
	default_prog = { "fish" },
	window_frame = {
		font = wezterm.font({ family = "Roboto", weight = "Bold" }),
		-- Default to 10. on Windows but 12.0 on other systems
		font_size = 12.0,
		active_titlebar_bg = "#333333",
		inactive_titlebar_bg = "#333333",
	},
	colors = {
		tab_bar = {
			-- The color of the inactive tab bar edge/divider
			inactive_tab_edge = "#575757",
		},
	},
}
