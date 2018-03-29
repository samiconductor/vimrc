" add fzf to runtime path
let s:fzf_rtp = '/usr/local/opt/fzf'

if isdirectory(s:fzf_rtp)
  set runtimepath+=s:fzf_rtp
endif
