return {
  "theprimeagen/harpoon",
  -- harpoon2 is the new stable branch
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("harpoon"):setup()
  end,
  -- Keybindings for [H]arpoon
  keys = {
    {
      "<leader>H",
      desc = "[H]arpoon",
    },
    {
      "<leader>Hf",
      function()
        require("harpoon"):list():add()
      end,
      desc = "Harpoon [f]ile",
    },

    {
      "<leader>Hl",
      function()
        local harpoon = require("harpoon")
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
      desc = "Harpoon [l]ist",
    },
    {
      "<leader>Ha",
      function()
        require("harpoon"):list():select(1)
      end,
      desc = "harpoon to file 1",
    },
    {
      "<leader>Hb",
      function()
        require("harpoon"):list():select(2)
      end,
      desc = "Harpoon to file 2",
    },
    {
      "<leader>Hc",
      function()
        require("harpoon"):list():select(3)
      end,
      desc = "Harpoon to file 3",
    },
    {
      "<leader>Hd",
      function()
        require("harpoon"):list():select(4)
      end,
      desc = "Harpoon to file 4",
    },
    {
      "<leader>He",
      function()
        require("harpoon"):list():select(5)
      end,
      desc = "Harpoon to file 5",
    },
  },
}
