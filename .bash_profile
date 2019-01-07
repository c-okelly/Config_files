. ~/.shortcuts.sh

#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

### Custom path exports
# Rust
export PATH="$HOME/.cargo/bin:$PATH"
# Java 8
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
# Gemfire
export PATH=$PATH:/opt/pivotal/pivotal-gemfire-8.2.0.1/bin
# Murex MVN
export M3_HOME="$HOME/maven/maven-3.0.5"
export PATH=$PATH:$M3_HOME/bin
