# dotfiles

### setup
```sh
git init --bare $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no
```

### install
```sh
git clone --separate-git-dir=~/.dotfiles git@github.com:ivoputzer/dotfiles.git $HOME
```

### usage
```sh
  dotfiles --help
```
