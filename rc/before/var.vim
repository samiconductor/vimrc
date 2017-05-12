" global var directory
let g:vardir = expand("~/.vim/var")

" set tmp directories
let s:dirs = [
      \["backup", "backupdir"],
      \["undo", "undodir"],
      \["swp", "directory"]]

for [s:dir, s:opt] in s:dirs
  let s:path = g:vardir.'/'.s:dir

  if !isdirectory(s:path)
    silent exec "!mkdir -p ".s:path
  endif

  exec "set ".s:opt."^=".s:path
endfor
