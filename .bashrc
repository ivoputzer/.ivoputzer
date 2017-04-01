alias dotfiles="/usr/bin/git --git-dir=${HOME}/.ivoputzer/ --work-tree=${HOME}"

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
alias l="CLICOLOR_FORCE=1 ls -hAno| tail -n +2"
alias ll="l| less"
alias lc="stat -f '%A %N' *"

# git

alias tig="tig --all"
alias gm="git merge"
alias gb="git branch"
alias gd="git diff"
alias gdc="git diff --cached"
alias gst="git status"
alias gss="gst -s"
alias gsb="gss -b"
alias ga="git add"
alias gaa="git add --all"
alias gci="git commit -m"
alias gca="git commit -v -a"
alias gco="git checkout"
alias gcm="git checkout master"
alias gcb="git checkout -t"

eval $(hub alias -s)

# maven

alias m="mvn"
alias mct="mvn clean test"
alias mcp="mvn clean package"
alias mci="mvn clean install"

# docker

# alias athenapdf="docker run --rm -v $(pwd):/converted/ arachnysdocker/athenapdf athenapdf"
# alias npm-prune-global="npm ls -gp --depth=0 | awk -F/ '/node_modules/ && !/\/npm$/ {print $NF}' | xargs npm -g rm"
# alias pdftk="docker run --rm -v $(pwd):/tmp -i ivoputzer/pdftk $@"
