#!/bin/bash
# Personal bash function

# Bower clean
function bower_clean_reinstall {
  echo "clear bash"
  rm -r bower_components/
  bower cache clean
  bower install
}

# Core work no boot
bWork () {
    isWorkSesion=$1
    session="work"
    # Alias to dev repo
    dev

    # Start new seesion
    tmux new-session -d -s $session

    # Set up window arrangement for window 1
    tmux selectp -t 1 
    tmux splitw -h -p 50 
    tmux splitw -v -p 50 
    tmux selectp -t 1 
    tmux splitw -v -p 50 

    # New window
    tmux new-window -t $session:2

    # Upgrade oh my zsh and brew
    # tmux send-keys "upgrade_oh_my_zsh" C-m 
    tmux send-keys "brew update" C-m 
    tmux send-keys "brew upgrade" C-m 
    #tmux send-keys "brew cask upgrade" C-m 

    # Return to window 1 (base)
    tmux select-window -t $session:1

    # Attach if not work session
    if [ $workSession ]; then
        echo "Work sesion"
    else
	    tmux attach-session -t $session
    fi

}

# Setup work tmux environment and connect
work () {

    session="work"

    # Detach if in session
    if [[ "$TERM" =~ "screen".* ]]; then
        `tmux detach-client`
    fi

    # Boot tmux work
    workSession=true
    bWork $workSession

    # cd into correct windows
    tmux selectp -t 3 
    tmux send-keys "cd dokypop-jetty/" C-m 
    tmux send-keys "dcd" C-m 
    tmux send-keys "rm webapps/visual-metadata-1.0-SNAPSHOT.xml" C-m 
    tmux send-keys "rm webapps/services-1.0-SNAPSHOT.xml" C-m 
    tmux send-keys "dStart" C-m 

    # Run bower install / npm install for ploypop-client
    tmux selectp -t 4 
    tmux send-keys "cd polypop-client/" C-m 
    tmux send-keys "npm install" C-m 
    tmux send-keys "bower install" C-m 
    # Will await password
    tmux send-keys "sudo gulp serve" C-m

    tmux selectp -t 2
    tmux send-keys "cd rest-service/" C-m 
    tmux send-keys "./gradlew clean build" C-m 

    tmux selectp -t 1
    tmux send-keys "cd polypop-client/" C-m 

    # Attach
	tmux attach-session -t $session
}
