-- Keybindings
-- s -> stage / unstage
-- S -> Stage all
-- U -> Unstage all
-- X -> discard changes
-- g? -> help menu
-- <Leader>b -> Open / close file tree
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
