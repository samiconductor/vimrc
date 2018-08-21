" displays all buffers in a top bar when only one tab is open
let g:airline#extensions#tabline#enabled = 1

" do not collapse the path names
let g:airline#extensions#tabline#fnamecollapse = 0

" make sure the symbols dictionary exists
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_right_sep = '«'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = '☰'
let g:airline_symbols.branch = '⎇ '
