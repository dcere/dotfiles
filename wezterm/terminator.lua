local wezterm = require 'wezterm'

local module = {}

function module.apply_to_config(config)

    -- Keybindings
    config.keys = {

        -- Splits
        -----------------------------------------------------------------------
        -- Ctrl + Shift + e -> Split vertically (left and right)
        {
            key = 'e',
            mods = 'CTRL|SHIFT',
            action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
        },
        -- Ctrl + Shift + o -> Split horizontally (top and bottom)
        {
            key = 'o',
            mods = 'CTRL|SHIFT',
            action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
        },

        -- Pane movement
        -----------------------------------------------------------------------
        -- Alt + Up -> Go to pane up
        {
            key = 'UpArrow',
            mods = 'ALT',
            action = wezterm.action.ActivatePaneDirection "Up",
        },
        -- Alt + Down -> Go to pane down
        {
            key = 'DownArrow',
            mods = 'ALT',
            action = wezterm.action.ActivatePaneDirection "Down",
        },
        -- Alt + Right -> Go to pane right
        {
            key = 'RightArrow',
            mods = 'ALT',
            action = wezterm.action.ActivatePaneDirection "Right",
        },
        -- Alt + Left -> Go to pane left
        {
            key = 'LeftArrow',
            mods = 'ALT',
            action = wezterm.action.ActivatePaneDirection "Left",
        },
    }
end

return module
