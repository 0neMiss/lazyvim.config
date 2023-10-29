-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

vim.keymap.set(
  "n",
  "<leader>sx",
  require("telescope.builtin").resume,
  { noremap = true, silent = true, desc = "Resume" }
)
-- Normal Mode
vim.keymap.set("n", "L", "$")
vim.keymap.set("n", "H", "^")

-- Visual Mode
vim.keymap.set("v", "L", "$")
vim.keymap.set("v", "H", "^")
