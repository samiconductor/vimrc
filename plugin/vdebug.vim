" make sure the vdebug options dictionary exists
if !exists('g:vdebug_options')
  let g:vdebug_options = {}
endif

" do not stop on first executated line
let g:vdebug_options['break_on_open'] = 0
