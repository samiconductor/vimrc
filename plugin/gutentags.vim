" do not generate on write
let g:gutentags_generate_on_write = 0

" cache tags outside of project
let g:gutentags_cache_dir = g:vardir.'/tags'

if !isdirectory(g:gutentags_cache_dir)
  call mkdir(g:gutentags_cache_dir, 'p')
endif
