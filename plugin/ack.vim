" shortcuts
nnoremap <Leader>f :LAck!<Space>

" use the silver searcher
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
