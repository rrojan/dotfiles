-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap.set

-- Map kj to esc
keymap("i", "kj", "<Esc>", { noremap = true, silent = true, desc = "Escape" })

-- Map leader + h and leader + l to move to the beginning and end of the line
keymap("n", "<Leader>h", "^", { noremap = true, silent = true, desc = "Go to start of line" })
keymap("n", "<Leader>l", "$", { noremap = true, silent = true, desc = "Go to end of line" })

-- Restore Y over yy.
keymap("n", "y", '"+y', { noremap = true, silent = true, desc = "Yank to clipboard" })
keymap("v", "y", '"+y', { noremap = true, silent = true, desc = "Yank to clipboard" })

-- Restore default behavior for Yanking the whole line
keymap("n", "Y", '"+yy', { noremap = true, silent = true, desc = "Yank line to clipboard" })

-- Marks
keymap("n", "dm", ":delmarks ", { noremap = true, silent = true, desc = "Delete a mark" })
keymap("n", "dam", ":delm! ", { noremap = true, silent = true, desc = "Delete all marks" })

-- Use q to exit visual mode
keymap("v", "q", "<C-[>", { noremap = true, silent = true, desc = "Quit visual mode" })
