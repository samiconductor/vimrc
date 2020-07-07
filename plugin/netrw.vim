" open netrw
nnoremap - :Explore<CR>

" put netrw bookmarks and history in var directory
let g:netrw_home = g:vardir

" initialize with dot files hidden
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'

" open files on the right
let g:netrw_altv = 1

" open previews vertically
let g:netrw_preview = 1

" disable gx
let g:netrw_nogx = 1
