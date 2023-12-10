-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("catppuccin").setup({
  color_overrides = {
    transparent_background = true,
    no_italic = true,
  },
})
