" global cache directory
let g:cachedir = expand("~/.vim/cache/")

" set tmp directories
let s:dirs = [
      \["backup", "backupdir"],
      \["undo", "undodir"],
      \["swp", "directory"]]

for [s:dir, s:var] in s:dirs
  let s:path = g:cachedir.s:dir."/"

  if !isdirectory(s:path)
    silent exec "!mkdir -p ".s:path
  endif

  exec "set ".s:var."^=".s:path."/"
endfor
