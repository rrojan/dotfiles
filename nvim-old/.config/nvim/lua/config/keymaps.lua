-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap.set

-- Map kj to esc
keymap("i", "kj", "<Esc>", { noremap = true, silent = true, desc = "Escape" })

-- Map leader + h and leader + l to move to the beginning and end of the line
keymap("n", "<Leader>h", "^", { noremap = true, silent = true, desc = "Go to start of line" })
keymap("n", "<Leader>l", "$", { noremap = true, silent = true, desc = "Go to end of line" })

-- Marks
keymap("n", "dm", ":delmarks ", { noremap = true, silent = true, desc = "Delete a mark" })
keymap("n", "dam", ":delm! ", { noremap = true, silent = true, desc = "Delete all marks" })

-- Use q to exit visual mode
keymap("v", "q", "<C-[>", { noremap = true, silent = true, desc = "Quit visual mode" })

-- Restore Y over yy.
keymap("n", "Y", "yy", { noremap = true, silent = true, desc = "Yank line to clipboard" })

-- Jump paragraphs
keymap("n", "J", "}", { noremap = true, silent = true, desc = "Jump paragraph down" })
keymap("n", "K", "{", { noremap = true, silent = true, desc = "Jump paragraph up" })

-- Use black hole register for delete, change, and cut operations to avoid copying to clipboard
keymap("n", "d", '"_d', { noremap = true, silent = true, desc = "Delete without affecting clipboard" })
keymap("n", "c", '"_c', { noremap = true, silent = true, desc = "Change without affecting clipboard" })
keymap("n", "x", '"_x', { noremap = true, silent = true, desc = "Cut without affecting clipboard" })
