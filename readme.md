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

---

#### iterm2
navigate to the preferences window (iterm2 -> preferences), click on the general tab and towards the bottom of the window you should see an option that says `load preferences from a custom folder or url`. check this option and set the url according to `$HOME/.iterm2`.

#### sublime text 3
for consistency `$HOME/Library/Application Support/Sublime Text 3/Packages/User` needs to be symlinked to `$HOME/.sublime`.
