" editing
set shiftwidth=2
set tabstop=2
set expandtab                     " replace tabs with spaces
set textwidth=0                   " avoid forced line breaks
set nowrap
let &showbreak = '↪ '             " if line is wrapped, prefix with break character
set number relativenumber         " show relative line numbers
set ruler                         " show the line and columb number of the cursor
set cursorline                    " highlight the current line
set list                          " show invisible characters
set backspace=indent,eol,start    " backspace through everything in insert mode
set laststatus=2                  " always show the status line

" lookup words with dictionary completion
set dictionary+=/usr/share/dict/words

" toggle paste mode
set pastetoggle=<F4>

" hide buffer changes warning on buffer switch
set hidden

" automatically update buffer when underlying file changes
set autoread

" list chars
set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the last column when wrap is
                                  " off and the line continues beyond the left of the screen

" searching
set incsearch   " incremental searching
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter

" completion
set completeopt-=preview

" cmd line completions
"" list: view the list of completions
"" longest: complete longest match
"" full: keep tabbing to cycle through completions
set wildmode=list:longest,full

set wildignore+=*.swp,*~,._*
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/node_modules/*,*/elm-stuff/*,*/bower_components/*
set wildignore+=*/target/*,*/generated/*
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
set wildignore+=*/tmp/librarian/*,*/.vagrant/*,*/.kitchen/*,*/vendor/cookbooks/*
set wildignore+=*/tmp/cache/assets/*/sprockets/*,*/tmp/cache/assets/*/sass/*
