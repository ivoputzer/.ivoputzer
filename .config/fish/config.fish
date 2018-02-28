set -x EDITOR "subl -w"
set -x PATH "/usr/local/sbin" $PATH
set -x LANG "en_US.UTF-8"
set -x LC_ALL "en_US.UTF-8"
set -x CLICOLOR "YES"
set -x LSCOLORS "ExGxFxdxCxDxDxhbadExEx"

alias dotfiles "git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $argv"

alias airport "/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport $argv"
alias ic='cd ~/Library/Mobile\ Documents/com~apple~CloudDocs'

alias pdftk "docker run --rm -v (pwd):/wd -i ivoputzer/pdftk $argv"
alias youtube-dl "docker run --rm -v (pwd):/wd -i ivoputzer/youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]' $argv"
alias chromium="docker run --rm --privileged -p 9222:9222 -i ivoputzer/chromium $argv"
alias jq "docker run --rm -i ivoputzer/jq $argv"

alias tree "tree -Chs $argv"
alias less "less -R $argv"
alias subl "/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias mkdir "mkdir -p $argv"
alias mkd "mkdir $argv; and cd $argv"
alias grep "grep --color=auto $argv"
alias n "fnm $argv"
alias lc "stat -f '%A %N' * $argv"
alias l "ls -hAno $argv"
alias dot "dotfiles $argv"
alias do "docker $argv"
alias dops "do ps --format \"table {{.ID}}\t{{.Image}}\t{{.Status}}\t{{.Names}}\" $argv"
alias doco "docker-compose $argv"

alias bashrc "vim ~/.bashrc"
alias fishrc "vim ~/.config/fish/config.fish"
alias tigrc "vim ~/.tigrc"
alias zshrc "vim ~/.zshrc"

alias g "git $argv"
alias h "hub $argv"

alias gm "git merge $argv"
alias ga "git add $argv"
alias gb "git branch $argv"
alias gd "git diff $argv"
alias gc "git commit -v $argv"
alias gdc "git diff --cached $argv"
alias gst "git status $argv"
alias gss "gst -s $argv"
alias gsb "gss -b $argv"
alias gaa "ga -A $argv"
alias gcm "gc -m $argv"
alias gca "gc -a $argv"
alias gco "git checkout $argv"
alias gcm "git checkout master $argv"
alias gcb "git checkout -t $argv"
alias tig "tig --all $argv"

function cdf -d 'change directory to the current finder directory'
  set -l target (osascript -e 'tell application "Finder" to if (count of Finder windows) > 0 then get POSIX path of (target of front Finder window as text)')
  if test (count $target -eq 1)
    cd $target; pwd
  else
    echo 'No Finder window found' >&2
  end
end
