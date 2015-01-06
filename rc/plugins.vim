filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/vundle
call vundle#begin('~/.vim/cache/plugins')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" language
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'chrisbra/csv.vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'elzr/vim-json'
Plugin 'groenewege/vim-less'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mattn/emmet-vim'
Plugin 'mmalecki/vim-node.js'
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-surround'
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
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-dispatch'

" interface
Plugin 'bling/vim-airline'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'ZoomWin'

" commands
Plugin 'chrisbra/NrrwRgn'
Plugin 'edsono/vim-matchit'
Plugin 'scrooloose/nerdcommenter'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-unimpaired'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on
