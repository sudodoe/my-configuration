# Default prompt
# export PS1='\u@\H:\w$ '

# Color for files
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

# Color for prompt
export TERM="xterm-color"
# Default Color
# PS1='\[\e[0;36m\]\u\[\e[0;36m\]@\[\e[0;36m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ '

PS1='\[\e[1;36m\]Do\[\e[1;36m\]@\[\e[1;36m\]hooli\e[0m\]:\[\e[1;32m\]\w\[\e[0m\]\$ '

# Insert Homebrew directory at the top of PATH environment variable
export PATH=/usr/local/bin:/usr/local/sbin:~/bin:$PATH

export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias tmux="TERM=screen-256color-bce tmux"
alias myconfig='/usr/bin/git --git-dir=$HOME/.myconfig/ --work-tree=$HOME'

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

### iTerm2 Settings ###
# Print working directory in window bar and tab
if [ $ITERM_SESSION_ID ]; then
  DISABLE_AUTO_TITLE="true"
  echo -ne "\033];${PWD##*/}\007"
fi

precmd() {
  echo -ne "\033];${PWD##*/}\007"
}
