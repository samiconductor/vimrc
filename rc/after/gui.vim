if has("gui_running")
  " syntax highlighting
  let g:solarized_contrast="high"    "default value is normal
  syntax enable
  set background=dark
  silent! colorscheme solarized

  " highlight the cursor line
  set cursorline

  " no menu or tool bar
  set guioptions-=m
  set guioptions-=T

  " window size at startup
  set lines=50 columns=160

  " automatically resize splits when resizing MacVim window
  autocmd VimResized * wincmd =

  if has("mac")
    " macvim fullscreen
    set fuoptions=maxvert,maxhorz
  endif

endif
