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
alias gdc="git diff --cached"
alias gst="git status"
alias gss="gst -s"
alias gsb="gss -b"
alias gaa="ga --all"
alias gci="git commit -m"
alias gca="git commit -v -a"
alias gco="git checkout"
alias gcm="git checkout master"
alias gcb="git checkout -t"
alias tig="tig --all"

eval $(hub alias -s)

# maven

alias m="mvn"
alias mct="mvn clean test"
alias mcp="mvn clean package"
alias mci="mvn clean install"

mvn() {
  mvn $* | sed -e "s/\(\[INFO\]\ \-.*\)/[36;01m\1[m/g" \
               -e "s/\(\[INFO\]\ >>> .*\)/[32;01m\1[m/g" \
               -e "s/\(\[INFO\]\ <<< .*\)/[32;01m\1[m/g" \
               -e "s/\(\[INFO\]\ Building .*\)/[36;01m\1[m/g" \
               -e "s/\(\[INFO\]\ \[.*\)/01m\1[m/g" \
               -e "s/\(\[INFO\]\ BUILD SUCCESS\)/[01;32m\1[m/g" \
               -e "s/\(\[INFO\]\ BUILD FAILURE\)/[01;31m\1[m/g" \
               -e "s/\(\[WARNING\].*\)/[01;33m\1[m/g" \
               -e "s/\(WARN.*\)/[01;33m\1[m/g" \
               -e "s/\(DEBUG.*\)/[01;33m\1[m/g" \
               -e "s/\(\[ERROR\].*\)/[01;31m\1[m/g" \
               -e "s/Tests run: \([^,]*\), Failures: \([^,]*\), Errors: \([^,]*\), Skipped: \([^,]*\)/[32mTests run: \1[m, Failures: [01;31m\2[m, Errors: [01;31m\3[m, Skipped: [01;33m\4[m/g"
}

# sublime

alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

# docker

alias pdftk="docker run --rm -v $(pwd):/tmp -i ivoputzer/pdftk"

#change directory to the current finder directory

cdf() {
  target=`osascript -e 'tell application "Finder" to if (count of Finder windows) > 0 then get POSIX path of (target of front Finder window as text)'`
  if [ "$target" != "" ]; then
      cd "$target"; pwd
  else
      echo 'No Finder window found' >&2
  fi
}

# get colors in manual pages

man() {
  env \
  LESS_TERMCAP_mb=$(printf "\e[1;31m") \
  LESS_TERMCAP_md=$(printf "\e[1;31m") \
  LESS_TERMCAP_me=$(printf "\e[0m") \
  LESS_TERMCAP_se=$(printf "\e[0m") \
  LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
  LESS_TERMCAP_ue=$(printf "\e[0m") \
  LESS_TERMCAP_us=$(printf "\e[1;32m") \
  man "$@"
}
