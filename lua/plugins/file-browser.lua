return {
  "nvim-telescope/telescope-file-browser.nvim",
  keys = {
    {
      "<leader>sB",
      ":Telescope file_browser path=%:p:h=%:p:h<cr>",
      desc = "Browse Files",
    },
    { "<leader>s*", ":Telescope live_grep<cr><C-r>*", desc = "Grep for last yank" },
  },
  config = function()
    require("telescope").load_extension("file_browser")
  end,
}
