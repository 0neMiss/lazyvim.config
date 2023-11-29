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

-- Go to last character of file with G instead of just the last line
vim.keymap.set({ "v", "n" }, "G", "<C-End>")

-- Go to first character of file with gg instead of first line
vim.keymap.set({ "v", "n" }, "gg", ":0\n0")

-- Yank current selection and search with that yank
vim.keymap.set({ "v" }, "$", "y/<C-r>0")

-- mark the ' register for a easy jumpback
vim.keymap.set({ "v", "n" }, "M", "m'")

--  Search and replace the current selections
--  Visual Mode
vim.keymap.set({ "v" }, "<C-$>", [[y:%s/<C-r>0/]])

-- Run a jest test for a specific file
vim.keymap.set({ "v", "n" }, "<leader>tt", function()
  -- grab the path to the current file from the root of the cwd
  local path = vim.fn.expand("%:r")
  local command = string.format("terminal nx run spectrum-news-web:test --testFile=%s.ts", path)
  vim.cmd(command)
end)

-- Run all jest tests
vim.keymap.set({ "v", "n" }, "<leader>ta", ":terminal nx test spectrum-news-web\n")

-- Run Lint
vim.keymap.set({ "v", "n" }, "<leader>tl", ":terminal nx lint spectrum-news-web\n")

-- Easy window resize commands
-- Resize by 10% in both virtical and horozontal directions
vim.keymap.set({ "n", "v" }, "+", "15<C-w>>15<C-w>+")
vim.keymap.set({ "n", "v" }, "-", "15<C-w><15<C-w>-")

-- Reset window sizes
vim.keymap.set({ "n", "v" }, "<C-r>", "<C-w>=")

-- Max out horozontal window size
vim.keymap.set({ "n", "v" }, "<C-s-l>", "<C-w>|")
vim.keymap.set({ "n", "v" }, "<C-s-h>", "<C-w>|")

-- Max out virtical window size
vim.keymap.set({ "n", "v" }, "<C-s-j>", "<C-w>_")
vim.keymap.set({ "n", "v" }, "<C-s-k>", "<C-w>_")

-- Normal Mode (select current word instead)
vim.keymap.set({ "n" }, "<C-$>", [[yiw:%s/<C-">0/]])

-- So that delete and change work correctly with L and H
vim.keymap.set({ "v", "n" }, "dL", "d$")
vim.keymap.set({ "v", "n" }, "dH", "d^")
vim.keymap.set({ "v", "n" }, "cL", "c$")
vim.keymap.set({ "v", "n" }, "cH", "c^")

-- faster commands
vim.keymap.set({ "v", "n" }, ";", ":")
