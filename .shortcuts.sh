
# Easier navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Shortcuts - Navigation
alias d="cd ~/Desktop"
alias dr="cd /Users/cokelly/Google_Drive"
alias c="cd /Users/cokelly/Google_Drive/Code"
alias ucd="cd /Users/cokelly/Google_Drive/1._UCD_conversion_masters/1._Term_4"
alias o="open ."
alias mk="mkdir"

# Non work navigaiton shortcuts
alias down="cd /Users/cokelly/Desktop/Downloads; rtorrent"
alias ddown="mv /Users/cokelly/Desktop/*.torrent /Volumes/Storage/Downloads; cd /Volumes/Storage/Downloads; rtorrent"
# alias karabiner="cd /Users/cokelly/Library/Application\ Support/Karabiner"

# Work navigation and shortcuts
alias dev="cd /Users/conorokelly/Desktop/DevWork"

# Switch karabiner files
alias lkeys="cp ~/.config/karabiner/karabiner-no-key.json ~/.config/karabiner/karabiner.json"
alias dkeys="cp ~/.config/karabiner/karabiner-desktop.json ~/.config/karabiner/karabiner.json"

# Work shortcuts
alias killMc='/usr/local/McAfee/fmp/bin/fmp stop'
alias startMc='/usr/local/McAfee/fmp/bin/fmp start'
alias vac="wine C:\\Murexapp\\MxwClt.exe /remote /program:vac"

# Git shortcuts
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit -m'
alias gd='git diff'
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'
alias gp='git pull'
alias gss='git stash'
alias gsp='git stash pop'

# Docker shortcuts
alias dcd='docker-compose down'
alias dcp='docker-compose pull'
alias dcu='docker-compose up'
alias dfRun="dcd; dcp; dcu;"
alias drmi='docker rmi $(docker images --filter "dangling=true" -q --no-trunc)'
alias drm='docker rm $(docker ps -qa --no-trunc --filter "status=exited")'

alias dRes='dcd; dcp; dcu;'
alias dClear='drm; drmi;'

alias dockQUp="docker-compose down; rm -rf webapps/* && docker-compose up"
alias dockFUp="docker-compose down; docker-compose pull; rm -rf webapps/*; docker-compose up"

# Git branch bash completion
#if [ -f ~/.git-completion.bash ]; then
#  . ~/.git-completion.bash
#  
  # Add git completion to aliases
#  __git_complete go _git_checkout
#  __git_complete gp _git_pull
#fi

# Spelling corrections
alias got='git '
alias get='git '

# Shortcuts - Files
alias hosts='sudo vim /etc/hosts'

### Short scripts ###
# Compile java funcions and run
function runj {
    echo "Compling and running $1 "
    # Created array of element seperate on .
    IFS="." read -r -a array <<< "$1"
    # Compile and then run
    javac $1
    java "${array[0]}"
    class="${array[0]}.class"
    # Remove class
    rm $class
}

function bower_clean_reinstall {
  echo "clear bash"
  rm -r bower_components/
  bower cache clean
  bower install
}

