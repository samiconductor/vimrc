filetype off

let s:pluginsdir=g:vardir.'plugins/'
let s:vundledir=s:pluginsdir.'Vundle.vim'

" Get Vundle if it does not yet exist
if !isdirectory(s:vundledir)
  silent execute '!git clone https://github.com/VundleVim/Vundle.vim.git '.s:vundledir
endif

" set the runtime path to include Vundle and initialize
let &rtp.=','.s:vundledir
call vundle#begin(s:pluginsdir)

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" language
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'chrisbra/csv.vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'elzr/vim-json'
Plugin 'groenewege/vim-less'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mattn/emmet-vim'
Plugin 'matze/vim-lilypond'
Plugin 'mmalecki/vim-node.js'
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-markdown'
Plugin 'stanangeloff/php.vim'
Plugin 'vim-ruby/vim-ruby'

" completion
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'Shougo/neocomplete.vim'
Plugin 'tpope/vim-endwise'

" code display
Plugin 'altercation/vim-colors-solarized'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'flazz/vim-colorschemes'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'skammer/vim-css-color'
Plugin 'tomasr/molokai'

" integrations
Plugin 'joonty/vdebug'
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-dispatch'

" interface
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'sjl/gundo.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-vinegar'

" commands
Plugin 'matchit.zip'
Plugin 'godlygeek/tabular'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on
