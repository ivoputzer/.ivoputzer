DISABLE_CORRECTION="true"

ZSH=$HOME/.oh-my-zsh
ZSH_THEME="nicoulaj"

plugins=(git brew docker) # plugins: git colored-man colorize github jira vagrant virtualenv pip python brew osx zsh-syntax-highlighting ...

source $ZSH/oh-my-zsh.sh

fpath=(/usr/local/share/zsh-completions $fpath)
fpath=(/usr/local/share/zsh/site-functions $fpath)

source ~/.bash_profile
source ~/.n_profile

# added by travis gem
[ -f /Users/ivoputzer/.travis/travis.sh ] && source /Users/ivoputzer/.travis/travis.sh
