" add eclim to runtime if it exists
let s:eclimdir = g:vardir.'/eclim'
if isdirectory(s:eclimdir)
  let &runtimepath.=','.s:eclimdir
endif
