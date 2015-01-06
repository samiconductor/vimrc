# Vim Config

## Install

Clone the config files including the
[Vundle](https://github.com/gmarik/Vundle.vim) submodule:

`git clone --recursive git@github.com:samiconductor/vimrc.git ~/.vim`

## Folders

### [rc/](rc/)

Contains settings you would normally put in your `vimrc`. But instead of
placing everything in one file, [vimrc](vimrc) globs for `.vim` files in
[rc/](rc/) and [rc/after/](rc/after/) which lets you split things up
nicely.

### [plugin/](plugin/)

Plugin is one of the `runtimepath` directories so any `.vim` scripts you
put in here are executed. The convention is put plugin specific settings
in files named after the plugin.

### [ftplugin/](ftplugin/)

This is another `runtimepath` directory but these scripts only execute
when a `filetype` is loaded that matches the script's name. Place
`filetype` specific settings in here (no more `autocmd FileType`
needed). Just be sure to use `setlocal` to avoid affecting other
buffers.

### vundle/

This setup hinges on [Vundle](https://github.com/gmarik/Vundle.vim) to
keep plugins in their own `runtimepath`. Hence it's included as a git
submodule.

### cache/

This directory is created at the bottom of
[rc/settings.vim](rc/settings.vim). It contains any temp files and your
installed Vundle plugins.

## Update Vundle

Update Vundle by running `git submodule update` in `~/.vim`.
