---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

vim.opt.relativenumber = true
vim.opt.clipboard = ""

M.ui = {
  theme = "dark_horizon",
  theme_toggle = { "dark_horizon", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M