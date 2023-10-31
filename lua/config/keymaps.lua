-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

vim.keymap.set(
  "n",
  "<leader>sx",
  require("telescope.builtin").resume,
  { noremap = true, silent = true, desc = "Resume" }
)

-- L and H go to end of line
vim.keymap.set({ "v", "n" }, "L", "^")
vim.keymap.set({ "v", "n" }, "H", "$")

-- so that delete and change work correctly with L and H
vim.keymap.set({ "v", "n" }, "dL", "d$")
vim.keymap.set({ "v", "n" }, "dH", "d^")
vim.keymap.set({ "v", "n" }, "cL", "c$")
vim.keymap.set({ "v", "n" }, "cH", "c^")

-- center the cursor
vim.keymap.set({ "v", "n" }, "<", "^zz")
vim.keymap.set({ "v", "n" }, "<C-d>", "<C-d>zz")
vim.keymap.set({ "v", "n" }, "<C-u>", "<C-u>zz")
vim.keymap.set({ "v", "n" }, "j", "jzz")
vim.keymap.set({ "v", "n" }, "k", "kzz")

-- faster commands
vim.keymap.set({ "v", "n" }, ";", ":")
