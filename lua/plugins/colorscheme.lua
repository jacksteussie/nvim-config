return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  { "m00qek/baleia.nvim", tag = "v1.4.0" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
