# .ivoputzer

### setup
```sh
git init --bare $HOME/.ivoputzer
alias dotfiles='/usr/bin/git --git-dir=$HOME/.ivoputzer --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no
```

### install
```sh
git clone --separate-git-dir=~/.ivoputzer git@github.com:ivoputzer/.ivoputzer.git $HOME
```

### usage
```sh
  dotfiles --help
```
