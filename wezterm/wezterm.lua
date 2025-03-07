-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- Add config file to watch list so that wezterm is reloaded when we change this config
wezterm.add_to_config_reload_watch_list("$HOME/.wezterm.lua")

-- Bash as interactive shell. Ubuntu 22 fix.
config.default_prog = { 'bash', '-i' }

-- For example, changing the color scheme:
config.color_scheme = 'Tango (base16)'

-- Disable audible bell
config.audible_bell = 'Disabled'

-- Enable scrollbar
config.enable_scroll_bar = true

-- Terminator: Splits and Keybindings
local terminator = require 'terminator'
terminator.apply_to_config(config)

-- and finally, return the configuration to wezterm
return config
