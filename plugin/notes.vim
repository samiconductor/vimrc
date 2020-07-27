" save notes to Dropbox
if !exists('g:notes_directories')
  let g:notes_directories = []
endif

let s:dropbox_notes = 'Dropbox/Notes'

if join(g:notes_directories) !~ s:dropbox_notes
  call add(g:notes_directories, expand('~/'.s:dropbox_notes))
endif

" create a note with current date as title
command! -complete=custom,s:list_note_tags -nargs=* Log execute 'Note @log '.strftime('%Y-%m-%d').' '.<q-args>

" export all notes as markdown to a directory
command! -nargs=1 ExportNotes call s:export_notes(<q-args>)

" copy tags index to a directory
command! -nargs=1 ExportNoteTags call s:export_note_tags(<q-args>)

function! s:list_note_tags(arglead, cmdline, cursorpos)
  return join(map(sort(keys(xolox#notes#tags#load_index()), 1), '"@".v:val'), "\n")
endfunction

function! s:export_notes(exportdir)
  let starttime = xolox#misc#timer#start()

  for directory in g:notes_directories
    for note in split(globpath(directory, '*'), "\n")
      let text = join(readfile(note), "\n")
      let markdown = xolox#notes#markdown#convert_note(text)
      let name = fnamemodify(note, ':t')
      let path = xolox#misc#path#merge(a:exportdir, name.'.md')

      call writefile(split(markdown, "\n"), path)
      call xolox#misc#msg#info("Exported note %s.", name)
    endfor
  endfor

  call xolox#misc#timer#stop("Converted all notes to Markdown in %s.", starttime)
endfunction

function! s:export_note_tags(exportpath)
  call writefile(readfile(g:notes_tagsindex), a:exportpath)
endfunction
