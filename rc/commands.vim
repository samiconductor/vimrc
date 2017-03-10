" grep and lgrep all files
"" silent to avoid seeing grep output
"" ! suffix to avoid opening first result in current window
command! -nargs=+ GrepAll execute 'silent grep! --exclude=.tags --exclude-dir={.git,.idea,.vagrant} -R <q-args> .' | copen 10
command! -nargs=+ LGrepAll execute 'silent lgrep! --exclude=.tags --exclude-dir={.git,.idea,.vagrant} -R <q-args> .' | lopen 10

" generate project ctags
command! Ctags execute '!ctags -VRf .tags .'
