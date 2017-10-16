" shortcuts
nnoremap <Leader>s :CtrlP<CR>
nnoremap <Leader>rs :CtrlPClearCache <Bar> CtrlP<CR>

" use caching
let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_cache_dir = g:vardir.'/ctrlp'
