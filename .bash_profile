. ~/.shortcuts.sh

if [ ! -f ~/.git-completion.bash ]; then 
  eval 'curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash'; 
fi; 

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
