return {
  { "m00qek/baleia.nvim", tag = "v1.4.0" },

  {
    "marko-cerovac/material.nvim",
    lazy = false,
    config = function()
      vim.cmd.colorscheme("material")
    end,
  },

  -- Configure LazyVim to load themes
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "material",
    },
  },
}
