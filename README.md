Personal dotfiles
=================

My personal dotfiles managed using GNU stow.


How To Use
==========

To create symlinks for selected folder/category, run:

```
gnu stow <name_of_folder_here>
```

Note, that the default target directory is a one level about the `$PWD` by default. Make sure to clone this repository into `~/<subfolder_name>` or declare target directory manually using the `--target=~/` option.

Examples
========

To create symlinks to neovim config, run following command from the root of the repository:

```
stow neovim 
```

To create symlinks to tmux config in case the repository is not cloned in a correct location, run:

```
stow --target=~/ tmux
```