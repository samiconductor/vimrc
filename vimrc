set encoding=utf-8
set nocompatible

for s:dir in ['rc', 'rc/after']
  for s:file in split(globpath(s:dir, '*.vim'), '\n')
    exec 'source ' . s:file
  endfor
endfor
