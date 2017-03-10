" make sure the vdebug options dictionary exists
if !exists('g:vdebug_options')
  let g:vdebug_options = {}
endif

" do not stop on first executated line
let g:vdebug_options['break_on_open'] = 0

" allow debuggin across multiple requests
let g:vdebug_options['continuous_mode'] = 1

" debug vdebug
let g:vdebug_options['debug_file'] = g:vardir.'vdebug.log'
