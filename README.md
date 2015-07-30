# Vim Config

My vim setup uses the standard `~/.vim` directory but I split things up
nicely. The runtime config is moved from a single, lengthy `vimrc` to
individual vim scripts. The standard `plugin` and `ftplugin` runtime
folders are used to configure any plugins and file types. And Vundle
along with the installed plugins are contained in a cache directory
which houses transient and temporary files.

## Install

`git clone https://github.com/samiconductor/vimrc.git ~/.vim`

Then install the Vundle plugins with `vim +PluginInstall +qall`.

## Folders

### [rc/](rc/)

This folder contains settings you would normally put in your `vimrc`.
But instead of placing everything in one file, [vimrc](vimrc) globs for
`.vim` files in [rc/before/](rc/before), [rc/](rc/), and
[rc/after/](rc/after/) which lets you split up your configuration
however you wish.

If source order matters, put files in the `before` directory that you
want to run first. Similarly, add files to `after` if they expect things
to already be defined.

### [plugin/](plugin/)

The `plugin` folder is one of the default `runtimepath` directories so
any `.vim` scripts you put in here are executed. I put plugin specific
settings in files named after the plugin here.

### [ftplugin/](ftplugin/)

This is another default `runtimepath` directory but the scripts in here
only execute when a `filetype` is loaded that matches the script's name.
I add file type settings here instead of using `autocmd FileType` in my
runtime configs. Just be sure to use `setlocal` to avoid affecting other
buffers.

### vundle/

This setup hinges on [Vundle](https://github.com/gmarik/Vundle.vim) to
keep plugins in a separate folder. My Vundle plugins are configured in
[rc/plugins.vim](rc/plugins.vim). This script also clones Vundle for you
if it does not exist.

### cache/

This directory is created in [rc/before/cache.vim](rc/before/cache.vim).
It contains any tmp files and installed Vundle plugins.

## Pointers

Some of the settings and conventions are copied directly from
[janus](https://github.com/carlhuda/janus). I highly recommend it,
especially if you're just getting started with vim.
