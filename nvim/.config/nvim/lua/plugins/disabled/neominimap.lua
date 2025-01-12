if true then
  return {}
end

return {
  "Isrothy/neominimap.nvim",
  version = "v3.*.*",
  enabled = true,
  lazy = false, -- NOTE: NO NEED to Lazy load
  -- Optional
  keys = {
    -- Global Minimap Controls
    { "<leader>nm", "<cmd>Neominimap toggle<cr>", desc = "Toggle global minimap" },
    { "<leader>no", "<cmd>Neominimap on<cr>", desc = "Enable global minimap" },
    { "<leader>nc", "<cmd>Neominimap off<cr>", desc = "Disable global minimap" },
    { "<leader>nr", "<cmd>Neominimap refresh<cr>", desc = "Refresh global minimap" },

    -- Window-Specific Minimap Controls
    { "<leader>nwt", "<cmd>Neominimap winToggle<cr>", desc = "Toggle minimap for current window" },
    { "<leader>nwr", "<cmd>Neominimap winRefresh<cr>", desc = "Refresh minimap for current window" },
    { "<leader>nwo", "<cmd>Neominimap winOn<cr>", desc = "Enable minimap for current window" },
    { "<leader>nwc", "<cmd>Neominimap winOff<cr>", desc = "Disable minimap for current window" },

    -- Tab-Specific Minimap Controls
    { "<leader>ntt", "<cmd>Neominimap tabToggle<cr>", desc = "Toggle minimap for current tab" },
    { "<leader>ntr", "<cmd>Neominimap tabRefresh<cr>", desc = "Refresh minimap for current tab" },
    { "<leader>nto", "<cmd>Neominimap tabOn<cr>", desc = "Enable minimap for current tab" },
    { "<leader>ntc", "<cmd>Neominimap tabOff<cr>", desc = "Disable minimap for current tab" },

    -- Buffer-Specific Minimap Controls
    { "<leader>nbt", "<cmd>Neominimap bufToggle<cr>", desc = "Toggle minimap for current buffer" },
    { "<leader>nbr", "<cmd>Neominimap bufRefresh<cr>", desc = "Refresh minimap for current buffer" },
    { "<leader>nbo", "<cmd>Neominimap bufOn<cr>", desc = "Enable minimap for current buffer" },
    { "<leader>nbc", "<cmd>Neominimap bufOff<cr>", desc = "Disable minimap for current buffer" },

    ---Focus Controls
    { "<leader>ns", "<cmd>Neominimap toggleFocus<cr>", desc = "Switch focus on minimap" },
  },

  init = function()
    -- The following options are recommended when layout == "float"
    vim.opt.wrap = false
    vim.opt.sidescrolloff = 36 -- Set a large value

    --- Put your configuration here
    vim.g.neominimap = {
      auto_enable = true,
      -- If you're using split mode, opening neo-tree and restoring last session won't work
      -- So restore last session (<Leader>ql) first and then open neo-tree
      layout = "split",
      split = {
        minimap_width = 16,
      },
      float = {
        minimap_width = 16,
      },
      click = {
        enabled = true,
      },
      diagnostic = {
        mode = "icon",
      },
      notification_level = vim.log.levels.OFF,
    }
  end,
}
