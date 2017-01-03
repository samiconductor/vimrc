" grep and lgrep all files
"" silent to avoid seeing grep output
"" ! suffix to avoid opening first result in current window
command! -nargs=+ GrepAll execute 'silent grep! -R <q-args> .' | copen 10
command! -nargs=+ LGrepAll execute 'silent lgrep! -R <q-args> .' | lopen 10
