" do not apply ack quickfix mappings
let g:ack_apply_qmappings = 0

" do not open preview
let g:ackpreview = 0

" use dispatch for searches
let g:ack_use_dispatch = 1

if has("gui_macvim") && has("gui_running")
  " Command-Shift-F on OSX
  nnoremap <D-F> :Ack<space>
else
  " Define <C-F> to a dummy value to see if it would set <C-f> as well.
  map <C-F> :dummy

  if maparg("<C-f>") == ":dummy"
    " <leader>f on systems where <C-f> == <C-F>
    nnoremap <leader>f :Ack<space>
  else
    " <C-F> if we can still map <C-f> to <S-Down>
    nnoremap <C-F> :Ack<space>
  endif

  map <C-f> <S-Down>
endif
