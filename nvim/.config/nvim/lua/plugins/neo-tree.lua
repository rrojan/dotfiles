return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
        -- hide_hidden = true,
        show_hidden_count = true,
        hide_dotfiles = false,
        hide_gitignored = false,
        hide_by_name = {
          ".git",
          -- ".DS_Store",
        },
        never_show = {},
      },
    },
    window = {
      width = 32,
    },
  },
}
