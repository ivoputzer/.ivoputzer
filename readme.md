# .ivoputzer

### setup
```sh
git init --bare $HOME/.ivoputzer
alias dotfiles='/usr/bin/git --git-dir=$HOME/.ivoputzer --work-tree=$HOME'

dotfiles config --local status.showUntrackedFiles no
# or
echo "*" >> $HOME/.gitignore
```

### install
```sh
git clone --separate-git-dir=~/.ivoputzer git@github.com:ivoputzer/.ivoputzer.git $HOME
```

### usage
```sh
  dotfiles --help
```

### todo
[] wget custom post-clone script
[] use pust post-clone script as command template
