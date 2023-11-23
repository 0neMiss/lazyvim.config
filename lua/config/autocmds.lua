-- Autocmds are automatically loaded on the VeryLazy event
-- Add any additional autocmds here
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua

-- Resize a windows when i enter them
vim.api.nvim_create_autocmd({ "WinEnter" }, {
  callback = function()
    vim.cmd([[execute "normal \<C-w>="]])
  end,
})
