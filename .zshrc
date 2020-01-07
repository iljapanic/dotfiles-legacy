# git aliases
alias g="git"
alias gs="git status"
alias gp="git push"
alias ga="git add ."
alias gc="git commit -m"
alias gpl="git pull"

# misc. aliases
alias zshconfig="code ${ZDOTDIR:-$HOME}/.zshrc"
alias zshsource="source ${ZDOTDIR:-$HOME}/.zshrc"
alias lsa="ls -a"
alias speed="speedtest-cli"

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# source custom scripts
export PATH="$HOME/scripts:$PATH"

# enable z command
. $HOME/scripts/z.sh


# fnm
export PATH=$HOME/.fnm:$PATH
eval "`fnm env --multi`"

# add composer to path
export PATH="$HOME/.composer/vendor/bin:$PATH"


# source colorls
# source $(dirname $(gem which colorls))/tab_complete.sh

# init pyenv
eval "$(pyenv init -)"

# init rbenv
eval "$(rbenv init -)"


# colorls aliases
alias l='colorls --tree=1 --group-directories-first --almost-all'
alias ll='colorls --group-directories-first --almost-all --long'
alias lt='colorls-tree'
alias lg='colorls --group-directories-first --almost-all --git-status'

# fix '%' symbol when new shell is spawn - specific to Hyper terminal
unsetopt PROMPT_SP


function sleep-in() {
  local minutes=$1
  local datetime=`date -v+${minutes}M +"%m/%d/%y %H:%M:%S"`
  sudo pmset schedule sleep "$datetime"
}

function sleep-cancel-all() {
  NUM_OF_SLEEPS=$(pmset -g sched | wc -l)
  if [[ $NUM_OF_SLEEPS -gt 0 ]]; then
    # The first line of output is a header, ignore it.
    NUM_OF_SLEEPS=$(expr $NUM_OF_SLEEPS - 1)
    seq $NUM_OF_SLEEPS | xargs -Iz sudo pmset schedule cancel 0
  fi
}


# MUST BE LAST: zsh-syntax-highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh