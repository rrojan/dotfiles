-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Setup Neovide
if vim.g.neovide then
  require("config.neovide")
end
