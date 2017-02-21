" save notes to Dropbox
if !exists('g:notes_directories')
  let g:notes_directories = []
endif

let s:dropbox_notes = 'Dropbox/Sam/Notes'

if join(g:notes_directories) !~ s:dropbox_notes
  call add(g:notes_directories, expand('~/'.s:dropbox_notes))
endif

" create a note with current date as title
command! Log execute 'Note @log '.strftime('%Y-%m-%d')
