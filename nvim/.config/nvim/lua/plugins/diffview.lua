return {
  {
    "sindrets/diffview.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },

    keys = {
      {
        "<Leader>gd",
        function()
          if next(require("diffview.lib").views) == nil then
            vim.cmd("DiffviewOpen")
          else
            vim.cmd("DiffviewClose")
          end
        end,
        desc = "Toggle Diffview window",
      },
      {
        "<Leader>gr",
        function()
          vim.cmd("DiffviewRefresh")
        end,
        desc = "Diffview Refresh",
      },
    },

    opts = {
      file_panel = {
        win_config = { -- See |diffview-config-win_config|
          position = "left",
          width = 28,
          win_opts = {},
        },
      },
    },
  },
}
