# My Dotfiles

This repository contains the dotfiles for my systems. Someday maybe I'll add more configuration files and other things that might be useful. "maybe"

## Requirements

Make sure you have GNU Stow and Git installed on your system.

### Git

```
$ sudo apt install git
```

### Stow

```
$ sudo apt install stow
```

## Installation

First, clone this repository to your $HOME folder on your system.

```
$ git clone https://github.com/Evanalsadik/dotfiles.git
$ cd Dotfiles
```

Then, use GNU Stow to create symlinks

```
$ stow .
```

and if you want to delete symlinks, type this on your terminal

```
$ stow -D
```
