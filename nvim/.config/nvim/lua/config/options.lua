-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

-- Set up sane tab defaults
opt.expandtab = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2

opt.autoindent = true
opt.smartindent = true
opt.smarttab = true

opt.title = true

-- No text wrap
opt.wrap = false
opt.backspace = { "start", "eol", "indent" }

-- Show line numbers
opt.number = true
opt.relativenumber = true

-- Show global status lines
-- opt.laststatus = 3

-- Copy/paste to system clipboard
opt.clipboard = ""

opt.swapfile = false
