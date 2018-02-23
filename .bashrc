alias dotfiles="/usr/bin/git --git-dir=${HOME}/.dotfiles/ --work-tree=${HOME}"

export EDITOR="subl -w"
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export CLICOLOR="YES"
export LSCOLORS="ExGxFxdxCxDxDxhbadExEx"

alias dotdiff="dotfiles diff"
alias dotstatus="dotfiles status -s"
alias dotadd="dotfiles add"
alias dotcommit="dotfiles commit"
alias dotamend="dotfiles commit --amend --no-edit -a"
alias dot="dotfiles"

alias bashrc="vim ~/.bashrc"
alias tigrc="vim ~/.tigrc"
alias zshrc="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

alias grep="grep --color=auto"
alias less="less -R"
alias mkdir="mkdir -p"
alias path="echo -e \${PATH//:/\\n}"
alias tree="tree -Chs"
alias pwdc="pwd| pbcopy"
alias n="sudo n"
alias ll="l| less"
alias l="ls -hAno"
alias lc="stat -f '%A %N' *"

# git

alias gm="git merge"
alias ga="git add"
alias gb="git branch"
alias gd="git diff"
alias gc="git commit -v"
alias gdc="git diff --cached"
alias gst="git status"
alias gss="gst -s"
alias gsb="gss -b"
alias gaa="ga -A"
alias gcm="gc -m"
alias gca="gc -a"
alias gco="git checkout"
alias gcm="git checkout master"
alias gcb="git checkout -t"
alias tig="tig --all"

eval $(hub alias -s)

# sublime

alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

# docker

alias pdftk="docker run --rm -v $(pwd):/tmp -i ivoputzer/pdftk"

# change directory to the current finder directory

cdf() {
  target=`osascript -e 'tell application "Finder" to if (count of Finder windows) > 0 then get POSIX path of (target of front Finder window as text)'`
  if [ "$target" != "" ]; then
      cd "$target"; pwd
  else
      echo 'No Finder window found' >&2
  fi
}

# added by travis gem
[ -f /Users/ivoputzer/.travis/travis.sh ] && source /Users/ivoputzer/.travis/travis.sh

export PATH=/Users/ivoputzer/.local/bin:$PATH
