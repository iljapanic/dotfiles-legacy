#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# Customize to your needs...
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/scripts:$PATH"
export DEFAULT_USER=$USER

# git aliases
alias g="git"
alias gs="git status"
alias gp="git push"
alias ga="git add ."
alias gc="git commit -m"
alias gpl="git pull"

# misc. aliases
alias tr="tree -L"
alias zshconfig="code ${ZDOTDIR:-$HOME}/.zshrc"
alias zshsource="source ${ZDOTDIR:-$HOME}/.zshrc"
alias lsa="ls -a"
alias open="thunar ."