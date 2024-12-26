return {
  -- Configure default colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "material-darker",
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
  },
  {
    "marko-cerovac/material.nvim",
    priority = 1001,
    -- Options
    -- oceanic, deep-ocean, palenight, lighter, darker
  },
}
