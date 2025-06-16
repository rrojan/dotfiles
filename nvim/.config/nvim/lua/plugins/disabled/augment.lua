if true then
  return {}
end

vim.g.augment_workspace_folders = { "/Users/roj/Documents/Outside/tasks-app" }

return {
  "augmentcode/augment.vim",
  config = function()
    -- Normal and visual mode mapping to send a chat message
    vim.api.nvim_set_keymap("n", "<leader>ac", ":Augment chat<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("v", "<leader>ac", ":Augment chat<CR>", { noremap = true, silent = true })

    -- Start a new chat conversation
    vim.api.nvim_set_keymap("n", "<leader>an", ":Augment chat-new<CR>", { noremap = true, silent = true })

    -- Toggle chat panel visibility
    vim.api.nvim_set_keymap("n", "<leader>at", ":Augment chat-toggle<CR>", { noremap = true, silent = true })
  end,
}
