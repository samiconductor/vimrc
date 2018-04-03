" cache tags outside of project
let g:gutentags_cache_dir=g:vardir.'/tags'

if !isdirectory(g:gutentags_cache_dir)
  call mkdir(g:gutentags_cache_dir, 'p')
endif
