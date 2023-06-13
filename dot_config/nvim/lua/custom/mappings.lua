---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>y"] = { [["+y]], "yank to system clipboard", opts = { nowait = true } },
    ["<leader>Y"] = { [["+Y]], "yank to system clipboard", opts = { nowait = true } },
    ["<leader>u"] = { "<cmd> UndotreeToggle <CR>", "toggle history tree", opts = {nowait = true } },
    ["n"] = { "nzzzv", "Cursor in the middle while searching", opts = {nowait = true } },
    ["N"] = { "Nzzzv", "Cursor in the middle while searching", opts = {nowait = true } },
    ["<leader>p"] = { [["_dP]], "Paste without overriding registry", opts = {nowait = true } },
    ["<leader>d"] = { [["_d]], "Delete to void register", opts = {nowait = true } },
    ["<leader>s"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], "Replace highlighted text", opts = {nowait = true } },
  },

  v = {
    ["<leader>y"] = { [["+y]], "yank to system clipboard", opts = { nowait = true } },
    ["<leader>Y"] = { [["+Y]], "yank to system clipboard", opts = { nowait = true } },
    ["K"] = { ":m '<-2<CR>gv=gv", "Move selected text up"},
    ["J"] = { ":m '<+1<CR>gv=gv", "Move selected text down"},
    ["<leader>d"] = { [["_d]], "Delete to void register", opts = {nowait = true } },
  }
}

-- more keybinds!

return M
