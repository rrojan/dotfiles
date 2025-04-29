-- Where has this plugin been all my life
return {
  "Wansmer/treesj",
  keys = {
    {
      "<leader>cj",
      "<cmd>TSJToggle<cr>",
      desc = "Join Toggle",
    },
  },
  opts = {
    use_default_keymaps = false,
    max_join_length = 150,
  },
}
