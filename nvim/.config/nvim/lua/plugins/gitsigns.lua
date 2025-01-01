return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require("gitsigns").setup()
    require("scrollbar.handlers.gitsigns").setup()
  end,
}
