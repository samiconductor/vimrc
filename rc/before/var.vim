" global var directory
let g:vardir = expand("~/.vim/var")

" set view directory
exec "set viewdir=".g:vardir."/view"

" set tmp directories
let s:dirs = [
      \["backup", "backupdir"],
      \["undo", "undodir"],
      \["swp", "directory"]]

for [s:dir, s:opt] in s:dirs
  let s:path = g:vardir.'/'.s:dir

  if !isdirectory(s:path)
    call mkdir(s:path, 'p')
  endif

  exec "set ".s:opt."^=".s:path
endfor
