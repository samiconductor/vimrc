set encoding=utf-8
set nocompatible

for s:dir in ['rc', 'rc/after']
  let s:path = expand('~/.vim/' . s:dir)
  for s:file in split(globpath(s:path, '*.vim'), '\n')
    exec 'source ' . s:file
  endfor
endfor
