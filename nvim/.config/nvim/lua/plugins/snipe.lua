return {
  -- "linkarzu/snipe.nvim",
  "leath-dub/snipe.nvim",
  keys = {
    {
      "<Leader>bs",
      function()
        require("snipe").open_buffer_menu()
      end,
      desc = "Open Buffers (Snipe)",
    },
  },
  config = function()
    local snipe = require("snipe")
    snipe.setup({
      hints = {
        -- make sure they don't collide with the navigation keymaps
        -- If you remove `j` and `k` from below, you can navigate in the plugin
        dictionary = "asfghl;wertyuiop",
      },
      navigate = {
        -- cancel_snipe = "<esc>",
        cancel_snipe = "q",
        close_buffer = "d",
      },
      -- Define the way buffers are sorted by default
      -- Can be any of "default" (sort buffers by their number) or "last" (sort buffers by last accessed)
      -- If you choose "last", it will be modifying sorting the boffers by last
      -- accessed, so the "a" will always be assigned to your latest accessed
      -- buffer
      -- If you want the letters not to change, leave the sorting at default
      sort = "last",
    })
    -- vim.keymap.set(
    --   "n",
    --   "gba",
    --   snipe.create_buffer_menu_toggler({
    --     -- Limit the width of path buffer names
    --     max_path_width = 2,
    --   }),
    --   { desc = "[P]Snipe" }
    -- )
  end,
}
