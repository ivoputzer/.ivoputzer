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

### oh-my-zsh
```
wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

```

### brew
```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
brew install wget tig tree hub htop
# optionally
brew install tmate git curl bash zsh fish
```

### n
```
curl -L https://git.io/n-install | bash -s -- -y latest stable lts
```

#### iterm2
navigate to the preferences window (iterm2 -> preferences), click on the general tab and towards the bottom of the window you should see an option that says `load preferences from a custom folder or url`. check this option and set the url according to `$HOME/.iterm2`.

#### sublime text 3
```shell
ST3=~/Library/Application\ Support/Sublime\ Text\ 3

rm -rf $ST3/Packages/User
ln -s ~/.st3/Packages/User $ST3/Packages/User

rm -rf $ST3/Installed\ Packages
ln -s ~/.st3/Installed\ Packages $ST3/Installed\ Packages
```
