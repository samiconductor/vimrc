" generate project ctags
command! Ctags execute '!ctags --exclude=.git --exclude=node_modules --verbose --recurse -f .tags .'
