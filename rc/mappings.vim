" yank from cursor to end of line
noremap Y y$

" open/close quickfix
nnoremap <Leader>co :copen<CR>
nnoremap <Leader>cc :cclose<CR>

" open/close location list
nnoremap <Leader>lo :lopen<CR>
nnoremap <Leader>lc :lclose<CR>

" remap home path expansion
cnoremap <C-H> <C-R>=expand("%:p:h") . "/"<CR>

" map cmdline history
cnoremap <C-P> <Up>
cnoremap <C-N> <Down>

" insert date into command line
cnoremap <C-T> <C-R>=strftime("%Y-%m-%d")<CR>

" run current file with python
nnoremap <Leader>pr :!python %<CR>

" run python tests
nnoremap <Leader>pt :!python -m unittest discover -s tests<CR>

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

if has("mac")
  " open finder or terminal in current directory
  nnoremap <leader>of :silent !open <C-R>=expand('%:p:h')<CR><CR>
  nnoremap <leader>ot :silent !open -a Terminal <C-R>=expand('%:p:h')<CR><CR>
endif

if has("gui_macvim") && has("gui_running")
  " Map command-[ and command-] to indenting or outdenting
  " while keeping the original selection in visual mode
  vmap <D-]> >gv
  vmap <D-[> <gv

  nmap <D-]> >>
  nmap <D-[> <<

  omap <D-]> >>
  omap <D-[> <<

  imap <D-]> <Esc>>>i
  imap <D-[> <Esc><<i

  " Bubble single lines
  nmap <D-Up> [e
  nmap <D-Down> ]e
  nmap <D-k> [e
  nmap <D-j> ]e

  " Bubble multiple lines
  vmap <D-Up> [egv
  vmap <D-Down> ]egv
  vmap <D-k> [egv
  vmap <D-j> ]egv

  " Map Command-# to switch tabs
  map  <D-0> 0gt
  imap <D-0> <Esc>0gt
  map  <D-1> 1gt
  imap <D-1> <Esc>1gt
  map  <D-2> 2gt
  imap <D-2> <Esc>2gt
  map  <D-3> 3gt
  imap <D-3> <Esc>3gt
  map  <D-4> 4gt
  imap <D-4> <Esc>4gt
  map  <D-5> 5gt
  imap <D-5> <Esc>5gt
  map  <D-6> 6gt
  imap <D-6> <Esc>6gt
  map  <D-7> 7gt
  imap <D-7> <Esc>7gt
  map  <D-8> 8gt
  imap <D-8> <Esc>8gt
  map  <D-9> 9gt
  imap <D-9> <Esc>9gt
else
  " Map command-[ and command-] to indenting or outdenting
  " while keeping the original selection in visual mode
  vmap <A-]> >gv
  vmap <A-[> <gv

  nmap <A-]> >>
  nmap <A-[> <<

  omap <A-]> >>
  omap <A-[> <<

  imap <A-]> <Esc>>>i
  imap <A-[> <Esc><<i

  " Bubble single lines
  nmap <C-Up> [e
  nmap <C-Down> ]e
  nmap <C-k> [e
  nmap <C-j> ]e

  " Bubble multiple lines
  vmap <C-Up> [egv
  vmap <C-Down> ]egv
  vmap <C-k> [egv
  vmap <C-j> ]egv

  " Make shift-insert work like in Xterm
  map <S-Insert> <MiddleMouse>
  map! <S-Insert> <MiddleMouse>

  " Map Control-# to switch tabs
  map  <C-0> 0gt
  imap <C-0> <Esc>0gt
  map  <C-1> 1gt
  imap <C-1> <Esc>1gt
  map  <C-2> 2gt
  imap <C-2> <Esc>2gt
  map  <C-3> 3gt
  imap <C-3> <Esc>3gt
  map  <C-4> 4gt
  imap <C-4> <Esc>4gt
  map  <C-5> 5gt
  imap <C-5> <Esc>5gt
  map  <C-6> 6gt
  imap <C-6> <Esc>6gt
  map  <C-7> 7gt
  imap <C-7> <Esc>7gt
  map  <C-8> 8gt
  imap <C-8> <Esc>8gt
  map  <C-9> 9gt
  imap <C-9> <Esc>9gt
endif
