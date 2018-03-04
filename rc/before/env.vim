" add local bin to path
let s:local_bin = expand('~/.local/bin')

if $PATH !~ s:local_bin
  let $PATH.=':'.s:local_bin
endif
