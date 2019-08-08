" yank from cursor to end of line
noremap Y y$

" open/close quickfix
nnoremap <Leader>co :copen<CR>
nnoremap <Leader>cc :cclose<CR>

" open/close location list
nnoremap <Leader>lo :lopen<CR>
nnoremap <Leader>lc :lclose<CR>

" reload buffer from file system
nnoremap <Leader>ct :checktime<CR>

" copy current file path or path with line number
nnoremap <silent> <Leader>cp :let @+ = expand('%')<CR>:echo 'copied '.expand('%')<CR>
nnoremap <silent> <Leader>cl :let @+ = expand('%').'#L'.line('.')<CR>:echo 'copied '.expand('%').'#L'.line('.')<CR>

" toggle text wrap
nnoremap <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>

" toggle hlsearch
nnoremap <leader>hl :set hlsearch! hlsearch?<CR>

" cd to the directory containing the file in the buffer
nnoremap <silent> <leader>cd :lcd %:h<CR>

" set text wrapping toggles
nnoremap <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>

" remap home path expansion
cnoremap <C-H> <C-R>=expand("%:p:h") . "/"<CR>

" map cmdline history
cnoremap <C-P> <Up>
cnoremap <C-N> <Down>

" insert date into command line
cnoremap <C-T> <C-R>=strftime("%Y-%m-%d")<CR>

if has("mac")
  " open finder or terminal in current directory
  nnoremap <leader>of :silent !open <C-R>=expand('%:p:h')<CR><CR>
  nnoremap <leader>ot :silent !open -a Terminal <C-R>=expand('%:p:h')<CR><CR>
endif
