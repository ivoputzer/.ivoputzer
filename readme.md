# dotfiles

### setup

```
git init --bare $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no
```

### install

```
git clone --separate-git-dir=~/.dotfiles git@github.com:ivoputzer/dotfiles.git $HOME
```

### usage

```
  dotfiles --help
```
