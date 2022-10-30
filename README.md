# dotfiles-local

The configuration file in this repository are a compliment to the
[thoughtbot/dotfiles](/thoughtbot/dotfiles) repo.  In order to install, follow
the directions on thoughtbot/dotfiles repo, and clone this repo next to it.


## Arch Linux Packages

```
pacman -S vim tmux bat ripgrep bat
```


# asdf

```
asdf plugin-add rust https://github.com/code-lever/asdf-rust.git
```



### Install Homebrew 


```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

### Install dependencies

```
brew install rcm tmux vim pkg-config automake autoconf
```


### Download Inconsolata

```
https://fonts.google.com/specimen/Inconsolata
```


### install dotfiles

```
git clone git@github.com:thoughtbot/dotfiles
git clone git@github.com:glhewett/dotfiles-local
RCRC=dotfiles-local rcup
```
