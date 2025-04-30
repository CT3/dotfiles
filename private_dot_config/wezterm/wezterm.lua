local wezterm = require("wezterm")
return {
	warn_about_missing_glyphs = true,
	-- Fonts
	harfbuzz_features = { "calt", "clig", "liga", "zero" }, -- Enables ligature != ne
	font = wezterm.font("FiraCode Nerd Font"),
	font_size = 12.0,
	font_rules = {
		{
			intensity = "Bold",
			italic = true,
			font = wezterm.font({
				family = "Monaspace Argon",
				weight = "Bold",
				style = "Italic",
				harfbuzz_features = {
					"calt",
					"liga",
					"ss01",
					"ss02",
					"ss03",
					"ss04",
					"ss05",
					"ss06",
					"ss07",
					"ss08",
					"ss09",
				},
			}),
		},
		{
			italic = true,
			intensity = "Normal",
			font = wezterm.font({
				family = "Monaspace Argon",
				style = "Italic",
				harfbuzz_features = {
					"calt",
					"liga",
					"ss01",
					"ss02",
					"ss03",
					"ss04",
					"ss05",
					"ss06",
					"ss07",
					"ss08",
					"ss09",
				}, 
			}),
		},
	},
	color_scheme = "Gruvbox Material (Gogh)",
	--
	-- Appearance
	window_background_opacity = 0.9,
	hide_tab_bar_if_only_one_tab = true,
}
