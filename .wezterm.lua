-- WezTerm Config lua File

local wezterm = require 'wezterm'
local act = wezterm.action
local config = {}

-- general config
config.default_prog = { "powershell.exe", "-NoLogo" }
config.enable_tab_bar = true
config.use_fancy_tab_bar = false
config.window_close_confirmation = "NeverPrompt"

-- Font
config.font = wezterm.font("Cascadia Mono")

-- Theme
config.color_scheme = "Gruvbox Dark"

-- Opacity
config.window_background_opacity = 0.85

-- Windows
config.window_decorations = "TITLE | RESIZE"

-- Key Shortcut funktions
config.disable_default_key_bindings = true
config.keys = {
    {key="F11", mods="", action=act.ToggleFullScreen},

    { key = "c", mods = "CTRL|SHIFT", action = act.SpawnTab("CurrentPaneDomain") },
    { key = "x", mods = "CTRL|SHIFT", action = act. CloseCurrentTab { confirm = false } },

    { key = "n", mods = "CTRL|SHIFT", action = act.ActivateTabRelative(1) },
    { key = "p", mods = "CTRL|SHIFT", action = act.ActivateTabRelative(-1) },

    { key = "s", mods = "CTRL|SHIFT", action = act.SplitHorizontal { domain="CurrentPaneDomain" } }

}

return config
