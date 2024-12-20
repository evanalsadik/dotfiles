# My Dotfiles

This repository contains the dotfiles for my systems. Someday maybe I'll add more configuration files and other things that might be useful. "maybe"

## Requirements

Make sure you have GNU Stow and Git installed on your system.

### Git

```
sudo apt install git
```

### Stow

```
sudo apt install stow
```

## Installation

First, clone this repository to your $HOME folder on your system.

```
git clone https://github.com/Evanalsadik/dotfiles.git
cd dotfiles
```

Then, use GNU Stow to create symlinks

```
stow .
```

```
stow <fol>
```

```
stow stow -t ~ <folder>
```

and if you want to delete symlinks, type this on your terminal

```
stow -D
```

## Install zsh

If you're new to zsh/oh-my-zsh, do this.

```
sudo apt install zsh zsh-autosuggestions zsh-syntax-highlighting
```

### Install Oh my ZSH.

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

(optional)
```
chsh -s $(which zsh)
```

### Install PowerLevel10k

```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

### Install plugins.
- autosuggesions plugin

```
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
```

- zsh-syntax-highlighting plugin

```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
```

- zsh-fast-syntax-highlighting plugin

```
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git $ZSH_CUSTOM/plugins/fast-syntax-highlighting
```

- zsh-autocomplete plugin

```
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete
```

	
## References
 - [how to use GNU Stow](https://youtu.be/y6XCebnB9gs?si=Q1cSd7Ui6GRGW6S4)
 - [Oh my ZSH](https://github.com/ohmyzsh/ohmyzsh)
 - [PowerLevel10k](https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#oh-my-zsh)
 - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
 - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
 - [zsh-fast-syntax-highlighting](https://github.com/zdharma/fast-syntax-highlighting)
 - [zsh-autocomplete](https://github.com/marlonrichert/zsh-autocomplete)
