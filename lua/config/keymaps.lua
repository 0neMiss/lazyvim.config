-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
local limitCmdByExtension = function(command, extension)
  local currentFileExtension = string.match(vim.fn.expand("%"), "^.+(%..+)$")
  if currentFileExtension == extension then
    vim.cmd(command)
  end
end

vim.keymap.set(
  "n",
  "<leader>sx",
  require("telescope.builtin").resume,
  { noremap = true, silent = true, desc = "Resume" }
)

-- L and H go to end of line
vim.keymap.set({ "v", "n", "o" }, "H", "^")
vim.keymap.set({ "v", "n", "o" }, "L", "$")

-- Go to last character of file with G instead of just the last line
vim.keymap.set({ "v", "n", "o" }, "G", "<C-End>")

-- Yank current selection and search with that yank
vim.keymap.set({ "v" }, "$", "y/<C-r>0")

-- Mark the ' register for a easy jumpback
vim.keymap.set({ "v", "n" }, "M", "m'")

--  Search and replace the current selections
--  Visual Mode
vim.keymap.set({ "v" }, "<C-$>", [[y:%s/<C-r>0/]])

-- Run a jest test for a specific file
vim.keymap.set({ "v", "n" }, "<leader>tt", function()
  -- Grab the path to the current file from the root of the cwd
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

-- Faster commands
vim.keymap.set({ "v", "n" }, ";", ":")

-- Preview markdown if we are in a markdown file
vim.keymap.set({ "n" }, "<leader>m", function()
  limitCmdByExtension("MarkdownPreview", ".md")
end, { desc = "Start MarkdownPreview" })

-- Stop preview of markdown files
vim.keymap.set({ "n" }, "<leader>M", function()
  limitCmdByExtension("MarkdownPreviewStop", ".md")
end, { desc = "Stop MarkdownPreview" })
