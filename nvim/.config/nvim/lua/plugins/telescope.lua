return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    defaults = {
      file_ignore_patterns = {
        -- Ignore common directories
        "node_modules",
        "%.git/",
        ".next/", -- Next build files
        "coverage/", -- Jest coverage report
      },
    },
  },
}
