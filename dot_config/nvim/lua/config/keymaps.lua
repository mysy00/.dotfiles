-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set


map("n", "R", ":%s//g<Left><Left>", { desc = "Replace in file" })

-- Harpoon mappings
--
if vim.bo["filetype"] ~= "rnvimr" then
  map("n", "<M-1>", function() require("harpoon.ui").nav_file(1) end, { desc = "Harpoon 1" })
  map("n", "<M-2>", function() require("harpoon.ui").nav_file(2) end, { desc = "Harpoon 2" })
  map("n", "<M-3>", function() require("harpoon.ui").nav_file(3) end, { desc = "Harpoon 3" })
  map("n", "<M-4>", function() require("harpoon.ui").nav_file(4) end, { desc = "Harpoon 4" })
  map("n", "<M-5>", function() require("harpoon.ui").nav_file(5) end, { desc = "Harpoon 5" })
  map("n", "<M-6>", function() require("harpoon.ui").nav_file(6) end, { desc = "Harpoon 6" })
  map("n", "<M-7>", function() require("harpoon.ui").nav_file(7) end, { desc = "Harpoon 7" })
  map("n", "<M-8>", function() require("harpoon.ui").nav_file(8) end, { desc = "Harpoon 8" })
  map("n", "<M-9>", function() require("harpoon.ui").nav_file(9) end, { desc = "Harpoon 9" })
  map("n", "<M-0>", function() require("harpoon.ui").nav_file(0) end, { desc = "Harpoon 0" })
end

map("v", "<leader>ct", "<cmd>lua vim.lsp.buf.format({async=true})<cr>", { desc = "Visual Formatting" })
