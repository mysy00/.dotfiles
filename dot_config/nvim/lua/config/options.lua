-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options hereby
local opt = vim.opt

vim.g.colorscheme = "catppuccin"
vim.g.autoformat = false

-- Set eventignore so that tmux does not show `activity` every time we change from a window with Neovim
opt.eventignore = "FocusLost"

-- Set this for ToggleTerm terminals to not be discarded when closed
opt.hidden = true
