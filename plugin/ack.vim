" shortcuts
nnoremap <Leader>a :Ack!<Space>
nnoremap <Leader>la :LAck!<Space>

" use the silver searcher
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
