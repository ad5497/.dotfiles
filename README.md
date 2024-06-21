# My dotfiles

This directory contains the dotfiles for my system that are managed using GNU Stow

## Requirements

Ensure you have the following installed on your system

### Git

On Arch Linux
```
pacman -S git
```

On OSX
```
brew install git
```

### Stow

On Arch Linux
```
pacman -S stow 
```

On OSX
```
brew install stow
```

## Installation

First, clone the dotfiles repo into your $HOME directory using git

```
$ git clone git@github.com/ad5497/dotfiles.git
$ cd dotfiles
```

The subdirectories allow you to specify which applications to set up dotfiles for. We can then use GNU stow to create symlinks for the application corresponding to the subdirectory name

```
stow <subdirectory-name>
```
