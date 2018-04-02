" add fzf to runtime path
let s:fzf_rtps = ['~/.fzf', '/usr/local/opt/fzf']

for s:fzf_rtp in s:fzf_rtps
  if isdirectory(expand(s:fzf_rtp))
    exec 'set runtimepath+='.s:fzf_rtp
    break
  endif
endfor
