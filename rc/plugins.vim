filetype off

let s:pluginsdir=g:vardir.'/plugins'
let s:vundledir=s:pluginsdir.'/Vundle.vim'

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
Plugin 'elzr/vim-json'
Plugin 'leafgarland/typescript-vim'
Plugin 'matze/vim-lilypond'
Plugin 'mmalecki/vim-node.js'
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'quramy/tsuquyomi'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-markdown'
Plugin 'stanangeloff/php.vim'
Plugin 'vim-ruby/vim-ruby'

" completion
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'Shougo/neocomplete.vim'
Plugin 'tpope/vim-endwise'

" code display
Plugin 'altercation/vim-colors-solarized'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'posva/vim-vue'

" integrations
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-dispatch'
Plugin 'w0rp/ale'

" interface
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'sjl/gundo.vim'
Plugin 'tpope/vim-fugitive'

" commands
Plugin 'matchit.zip'
Plugin 'godlygeek/tabular'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'kana/vim-textobj-user'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'whatyouhide/vim-textobj-xmlattr'

" other
Plugin 'editorconfig/editorconfig-vim'
Plugin 'embear/vim-localvimrc'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on
