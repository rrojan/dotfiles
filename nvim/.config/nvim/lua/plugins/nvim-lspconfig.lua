return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = false },
  },
  init = function()
    local lsp_keys = require("lazyvim.plugins.lsp.keymaps")
    local keys = lsp_keys.get()
    -- Remap Hover from default K to M
    for _, key in ipairs(keys) do
      if key[1] == "K" then
        key[1] = "M"
      end
    end
  end,
}
