local function toggleTransparency()
  if vim.g.neovide_transparency == 1.0 then
    vim.cmd(string.format("let g:neovide_transparency=%s", vim.g.gui_transparency_default))
  else
    vim.cmd("let g:neovide_transparency=1.0")
  end
end

local function toggleFullscreen()
  if vim.g.neovide_fullscreen == false then
    vim.cmd("let g:neovide_fullscreen=v:true")
  else
    vim.cmd("let g:neovide_fullscreen=v:false")
  end
end

local opts = { noremap = true, silent = true }

-- Neovide
if vim.g.neovide then
  vim.keymap.set("n", "<D-s>", ":w<CR>")
  vim.keymap.set("v", "<D-c>", '"+y')
  vim.keymap.set("n", "<D-v>", '"+P')
  vim.keymap.set("v", "<D-v>", '"+P')
  vim.keymap.set("c", "<D-v>", "<C-R>+")
  vim.keymap.set("i", "<D-v>", '<ESC>l"+Pli')
  vim.g.neovide_transparency = 0.8
  vim.g.neovide_window_blurred = true

  vim.keymap.set("n", "<F8>", toggleFullscreen, opts)
  vim.keymap.set("n", "<F9>", toggleTransparency, opts)
end
