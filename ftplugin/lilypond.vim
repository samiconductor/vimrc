" set correct path for lilypond words
"
" also avoid slow dictionary lookups by overriding dictionary setting with =
" instead of +=
exec "setlocal dictionary=".g:vundle#bundle_dir."vim-lilypond/syntax/lilypond-words"
