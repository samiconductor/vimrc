" must explicitly set ale fixers
let g:ale_fixers = {
      \ 'python': ['autopep8'],
      \ 'javascript': ['eslint'],
      \ 'vue': ['eslint'],
      \ 'typescript': ['tslint'],
      \ }

" automatically fix on save
let g:ale_fix_on_save = 1
