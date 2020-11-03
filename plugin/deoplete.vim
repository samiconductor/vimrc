" Use deoplete
let g:deoplete#enable_at_startup = 1

" Add omni patterns
" \ 'typescript': ['[^. *\t]\.\([$_]\|\w\)\+', 'from\s\+[\''\"]\([-_\.\/]\|\w\)*'],
set completeopt+=noselect
call deoplete#custom#option('omni_patterns', {
      \ 'typescript': ['[^. *\t]\.', 'from\s\+[\''\"]\([-_\.\/]\|\w\)*'],
      \ 'html': ['<', '</', '<[^>]*\s[[:alnum:]-]*'],
      \})
