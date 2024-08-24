return {
  -- Configure default colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "duskfox",
    },
  },

  -- Colorschemes
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    -- priority = 1000,
    opts = {},
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    -- priority = 1000,
  },
}
