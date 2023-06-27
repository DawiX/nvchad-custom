---@type ChadrcConfig 
local M = {}
M.ui = {
  theme = 'gruvbox',
  theme_toggle = { "gruvbox", "gruvbox_light" },
  nvdash = {
      load_on_startup = true,
  }
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"
return M
