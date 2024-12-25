return {
  "theprimeagen/harpoon",
  lazy = true,
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
      "<leader>HH",
      function()
        require("harpoon"):list():add()
      end,
      desc = "Harpoon [H]ere",
    },
    {
      "<leader>HL",
      function()
        local harpoon = require("harpoon")
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
      desc = "Harpoon [L]ist",
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
    {
      "<leader>Hf",
      function()
        require("harpoon"):list():select(6)
      end,
      desc = "Harpoon to file 6",
    },
    {
      "<leader>Hg",
      function()
        require("harpoon"):list():select(7)
      end,
      desc = "Harpoon to file 7",
    },
    {
      "<leader>Hh",
      function()
        require("harpoon"):list():select(8)
      end,
      desc = "Harpoon to file 8",
    },
    {
      "<leader>Hi",
      function()
        require("harpoon"):list():select(9)
      end,
      desc = "Harpoon to file 9",
    },
    {
      "<leader>Hj",
      function()
        require("harpoon"):list():select(10)
      end,
      desc = "Harpoon to file 10",
    },
    {
      "<leader>HP",
      function()
        require("harpoon"):list():prev()
      end,
      desc = "Harpoon to prev file",
    },
    {
      "<leader>HN",
      function()
        require("harpoon"):list():next()
      end,
      desc = "Harpoon to next file",
    },
  },
}
