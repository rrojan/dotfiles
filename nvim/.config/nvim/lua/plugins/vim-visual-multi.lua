-- Keybindings
-- Ctrl + n -> Select next word (like Ctrl+d in VSCode)
-- Ctrl + Up / down -> create new cursor vertically up / down
-- Shift + arrows -> select one character at a time
-- n / N -> Prev / next occurance
-- [ / ] -> select prev / next cursor
-- q -> Skip current and goto next occurance
-- Q -> remove current cursor / selection
-- i / I / a / A -> Insert mode

-- "Vim way keybindings"
-- %s/that/this/g

return {
  {
    "mg979/vim-visual-multi",
    branch = "master",
    event = "LazyFile",
  },
}
