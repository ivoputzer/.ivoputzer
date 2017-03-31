# dotfiles

### install

```
git init --bare $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

dotfiles remote add origin git@github.com:ivoputzer/dotfiles.git
dotfiles config --local status.showUntrackedFiles no
dotfiles fetch origin
dotfiles checkout --track origin/master
```

### usage

```
  dotfiles --help
```

##### Sublime Text 3
for consistency `$HOME/Library/Application Support/Sublime Text 3/Packages/User` needs to be symlinked to `$HOME/.sublime`.
