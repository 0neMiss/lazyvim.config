-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

vim.keymap.set(
  "n",
  "<leader>sx",
  require("telescope.builtin").resume,
  { noremap = true, silent = true, desc = "Resume" }
)

vim.keymap.set({ "v", "n" }, "L", "$")
vim.keymap.set({ "v", "n" }, "H", "^")
vim.keymap.set({ "v", "n" }, ";", ":")
