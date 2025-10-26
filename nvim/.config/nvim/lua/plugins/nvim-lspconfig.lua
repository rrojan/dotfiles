return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = false },
  },
  config = function(_, opts)
    require("lspconfig").setup(opts)

    LazyVim.on_attach(function(_, buffer)
      local map = vim.keymap.set
      local wk = require("which-key")

      -- Unmap default "K" (hover)
      pcall(vim.keymap.del, "n", "K", { buffer = buffer })

      map("n", "M", vim.lsp.buf.hover, { buffer = buffer, desc = "LSP Hover" })

      map("n", "K", "{", { desc = "Move up paragraph" })
      map("n", "J", "}", { desc = "Move down paragraph" })

      wk.add({
        ["M"] = { "LSP Hover" },
        ["K"] = { "Move up paragraph" },
        ["J"] = { "Move down paragraph" },
      })
    end)
  end,
}
