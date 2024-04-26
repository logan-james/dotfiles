# My dotfiles

This directory contains the dotfiles for my system

## Requirements

Ensure you have the following installed on your system

### Git

```
pacman -S git
```

### Stow

```
pacman -S stow
```

### Installation

First, check out the dotfiles repo in your $HOME directory using git

```
$ git clone git@github.com/logan-james/dotfiles.git
$ cd dotfiles
```

then use GNU stow to create symlinks

```
$ stow .
```

#### Notes

The dotfiles directory acts as your home directory, thus layout files inside the dotfile directory as if they're in home. 

**example**

_copy over file into the dotfile which will now act as home directory_
```bash
~/dotfiles
> cp ~/.zshrc .
```
_now have to rename or delete the original file._ 
```
mv ~/.zshrc ~/.zshrcbackup
```

Now that the file is propperly structured inside your new dotfile and the original is renamed or deleted, you can execute stow command inside your dotfile.
```bash
stow .
```

[GNU Stow](https://www.gnu.org/software/stow/) a 'symlink farm manager' it creates symlinks for all the files and folders inside the directory you pass to it, then it places these symlinks into the parent of where you run it.

So when using ``stow .`` inside our dotfiles directory theres a symbolic link to where you passed to it.

[Excellent resource](https://www.youtube.com/watch?v=y6XCebnB9gs)

