export CLICOLOR='YES'
export LSCOLORS='ExGxFxdxCxDxDxhbadExEx'

alias dotfiles='/usr/bin/git --git-dir=$HOME/.ivoputzer/ --work-tree=$HOME'
alias bashrc='vim ~/.bashrc'
alias zshrc='vim ~/.zshrc'
alias tigrc='vim ~/.tigrc'
alias ohmyzsh='vim ~/.oh-my-zsh'

alias less='less -R'
alias n='sudo n'
alias l='ls -GlahpAF'
alias lchmod="ls -alG | awk '{k=0;for(i=0;i<=8;i++)k+=((substr(\$1,i+2,1)~/[rwx]/)*2^(8-i));if(k)printf(\" %0o \",k);print}'"
alias ll='l|less'
alias pc='pwd | pbcopy'

alias tig='tig --all'
alias gm='git merge'
alias gb='git branch'
alias gd='git diff'
alias gdc='git diff --cached'
alias gst='git status'
alias gss='gst -s'
alias gsb='gss -b'
alias ga='git add'
alias gaa='git add --all'
alias gci='git commit -m'
alias gca='git commit -v -a'
alias gco='git checkout'
alias gcm='git checkout master'
alias gcb='git checkout -t'

eval $(hub alias -s)

alias tree='tree -Chs'
alias path='echo -e ${PATH//:/\\n}'
alias grep='grep --color=auto'
alias mkdir='mkdir -p'

# maven
alias m='mvn' # todo -> create fn
alias mct='mvn clean test'
alias mcp='mvn clean package'
alias mci='mvn clean install'

# mosh sessions

export LC_ALL='en_US.UTF-8'
export LANG='en_US.UTF-8'

# alias athenapdf="docker run --rm -v $(pwd):/converted/ arachnysdocker/athenapdf athenapdf"
# alias npm-prune-global="npm ls -gp --depth=0 | awk -F/ '/node_modules/ && !/\/npm$/ {print $NF}' | xargs npm -g rm"
# alias pdftk="docker run --rm -v $(pwd):/tmp -i ivoputzer/pdftk $@"
# alias npmt="npm t -s --$@"
