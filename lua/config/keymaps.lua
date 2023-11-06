-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
vim.keymap.set(
  "n",
  "<leader>sx",
  require("telescope.builtin").resume,
  { noremap = true, silent = true, desc = "Resume" }
)

-- L and H go to end of line
vim.keymap.set({ "v", "n" }, "H", "^")
vim.keymap.set({ "v", "n" }, "L", "$")

-- Yank current selection and search with that yank
vim.keymap.set({ "v" }, "$", "y/<C-r>0")

-- mark the ' register for a easy jumpback
vim.keymap.set({ "v", "n" }, "M", "m'")

--  Search and replace the current selections
--  Visual Mode
vim.keymap.set({ "v" }, "<C-$>", [[y:%s/<C-r>0/]])

-- Normal Mode (select current word instead)
vim.keymap.set({ "n" }, "<C-$>", [[yiw:%s/<C-r>0/]])

-- So that delete and change work correctly with L and H
vim.keymap.set({ "v", "n" }, "dL", "d$")
vim.keymap.set({ "v", "n" }, "dH", "d^")
vim.keymap.set({ "v", "n" }, "cL", "c$")
vim.keymap.set({ "v", "n" }, "cH", "c^")

-- center the cursor (might be causing some weird issues in iterm)
vim.keymap.set({ "v", "n" }, "<", "^zz")
vim.keymap.set({ "v", "n" }, "<C-d>", "<C-d>zz")
vim.keymap.set({ "v", "n" }, "<C-u>", "<C-u>zz")
vim.keymap.set({ "v", "n" }, "j", "jzz")
vim.keymap.set({ "v", "n" }, "k", "kzz")

-- faster commands
vim.keymap.set({ "v", "n" }, ";", ":")
