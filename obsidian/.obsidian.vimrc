" Remap escape
imap kj <Esc>

" Remove default mapping of Space so it doesn't interfere when used as a
" leader key
unmap <Space>

" Goto start or end of a line
nnoremap <Space>h ^
nnoremap <Space>l $

" Move to the previous or next paragraph block
nnoremap K {
nnoremap J }

" Move line up or down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==

" Emulate Folding https://vimhelp.org/fold.txt.html#fold-commands
exmap togglefold obcommand editor:toggle-fold
nmap zo :togglefold
nmap zc :togglefold
nmap za :togglefold

exmap unfoldall obcommand editor:unfold-all
nmap zR :unfoldall

exmap foldall obcommand editor:fold-all
nmap zM :foldall

" Highlight current line
set cursorline
set cursorcolumn

" Buffers and navigation
exmap tabnext obcommand workspace:next-tab
nmap L :tabnext
exmap tabprev obcommand workspace:previous-tab
nmap H :tabprev

" Fix clipboard
set clipboard=unnamed

