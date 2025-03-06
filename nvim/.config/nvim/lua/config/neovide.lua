if not vim.g.neovide then
  return
end

local function toggle_transparency()
  if vim.g.neovide_transparency == 1.0 then
    vim.cmd(string.format("let g:neovide_transparency=%s", vim.g.gui_transparency_default))
  else
    vim.cmd("let g:neovide_transparency=1.0")
  end
end

local function toggle_fullscreen()
  if vim.g.neovide_fullscreen == false then
    vim.cmd("let g:neovide_fullscreen=v:true")
  else
    vim.cmd("let g:neovide_fullscreen=v:false")
  end
end

local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<D-s>", ":w<CR>")
vim.keymap.set("v", "<D-c>", '"+y')
vim.keymap.set("n", "<D-v>", '"+P')
vim.keymap.set("v", "<D-v>", '"+P')
vim.keymap.set("c", "<D-v>", "<C-R>+")
vim.keymap.set("i", "<D-v>", '<ESC>l"+Pli')

vim.g.neovide_refresh_rate = 144

vim.g.neovide_transparency = 0.9
vim.g.neovide_window_blurred = true

vim.g.neovide_input_macos_option_key_is_meta = "only_left"

vim.keymap.set("n", "<F8>", toggle_fullscreen, opts)
vim.keymap.set("n", "<F9>", toggle_transparency, opts)
