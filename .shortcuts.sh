
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
alias karabiner="cd /Users/cokelly/Library/Application\ Support/Karabiner"

# Work navigation and shortcuts
alias dev="cd /Users/conorokelly/Desktop/DevWork"
# Work shortcuts
alias dockQUp="docker-compose down && rm -rf webapps/* && docker-compose up"
alias dockFUp="docker-compose down && docker-compose pull && rm -rf webapps/* && docker-compose up"
alias drmi='docker rmi $(docker images --filter "dangling=true" -q --no-trunc)'
alias drm='docker rm $(docker ps -qa --no-trunc --filter "status=exited")'
alias dockFuCl='drmi && drm'

# Git shortcuts
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit -m'
alias gd='git diff'
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'
alias gp='git push'
alias gss='git stash'
alias gsp='git stash pop'

# Spelling corrections
alias got='git '
alias get='git '

# Shortcuts - Files
alias hosts='sudo nano /etc/hosts'

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

