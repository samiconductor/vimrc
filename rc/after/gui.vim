if has("gui_running")
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

  if has("unix")
    " enable opening URLs with gx
    let g:netrw_browsex_viewer="setsid xdg-open"
  endif

endif
