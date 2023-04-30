-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "Harpoon mark" })
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<C-h>", function()
  ui.nav_file(1)
end)
vim.keymap.set("n", "<C-t>", function()
  ui.nav_file(2)
end)
vim.keymap.set("n", "<C-n>", function()
  ui.nav_file(3)
end)
vim.keymap.set("n", "<C-s>", function()
  ui.nav_file(4)
end)
vim.keymap.set("n", "<leader>ut", vim.cmd.UndotreeToggle, { desc = "Undotree toggle" })

vim.keymap.set("n", "<leader>ys", function()
  require("yaml-companion").open_ui_select()
end, { desc = "yaml-companion: open ui select" })
vim.keymap.set("n", "<leader>yi", function()
  require("yaml-companion").open_ui_insert()
end, { desc = "yaml-companion: open ui insert" })
vim.keymap.set("n", "<C-a>", "<cmd>Neotree focus<CR>", { desc = "Neotree focus" })
