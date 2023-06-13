local wezterm = require 'wezterm'
local act = wezterm.action

wezterm.on('update-right-status', function(window)
  window:set_right_status(window:active_workspace())
end)

return {
  font = wezterm.font 'Hack Nerd Font',
  --font = wezterm.font 'SauceCodePro Nerd Font',
  default_prog = { '/usr/bin/fish' },
  color_scheme = "IR_Black",
  hide_tab_bar_if_only_one_tab = true,
  disable_default_key_bindings = true,
  keys = {
    -- Tabs
    { key = '{',         mods = 'CTRL|SHIFT', action = act{ActivateTabRelative=-1} },
    { key = '}',         mods = 'CTRL|SHIFT', action = act{ActivateTabRelative=1} },
    { key = 'q',         mods = 'CTRL|SHIFT', action = act({ CloseCurrentTab = { confirm = false } })},
    { key = 'PageDown',  mods = 'CTRL|SHIFT', action = act{ ActivateTabRelative = 1 }},
    { key = 'PageUp',    mods = 'CTRL|SHIFT', action = act{ ActivateTabRelative = -1 }},
    { key = 't',         mods = 'CTRL|SHIFT', action = act{ SpawnTab="CurrentPaneDomain" }},

    -- Panes
    { key = 'b',         mods = 'CTRL|SHIFT', action = act.RotatePanes 'CounterClockwise' },
    { key = 'n',         mods = 'CTRL|SHIFT', action = act.RotatePanes 'Clockwise' },
    { key = '0',         mods = 'CTRL|SHIFT', action = act.PaneSelect { mode = 'SwapWithActive' } },
    { key = '%',         mods = 'CTRL|SHIFT', action = act{SplitVertical={domain="CurrentPaneDomain"}} },
    { key = '"',         mods = 'CTRL|SHIFT', action = act{SplitHorizontal={domain="CurrentPaneDomain"}} },
    { key = 'w',         mods = 'CTRL|SHIFT', action = act{CloseCurrentPane={confirm=true}} },
    { key = "H",         mods = "CTRL|SHIFT", action = act{AdjustPaneSize={"Left", 5}}},
    { key = "J",         mods = "CTRL|SHIFT", action = act{AdjustPaneSize={"Down", 5}}},
    { key = "K",         mods = "CTRL|SHIFT", action = act{AdjustPaneSize={"Up", 5}}},
    { key = "L",         mods = "CTRL|SHIFT", action = act{AdjustPaneSize={"Right", 5}}},
    { key = "h",         mods = "CTRL|SHIFT", action = act.ActivatePaneDirection("Left")},
		{ key = "l",         mods = "CTRL|SHIFT", action = act.ActivatePaneDirection("Right")},
		{ key = "k",         mods = "CTRL|SHIFT", action = act.ActivatePaneDirection("Up")},
		{ key = "j",         mods = "CTRL|SHIFT", action = act.ActivatePaneDirection("Down")},

    -- Copy/Paste
    { key="c",           mods = "CTRL|SHIFT",   action = act.CopyTo 'Clipboard'},
    { key="v",           mods = "CTRL|SHIFT",   action = act.PasteFrom 'Clipboard'},

  },
}
