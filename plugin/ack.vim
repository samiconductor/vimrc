" shortcuts
nnoremap <Leader>f :Ack!<Space>
nnoremap <Leader>lf :LAck!<Space>

" use the silver searcher
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
