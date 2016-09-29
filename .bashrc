#########################
#  Related Shell Files  #
#########################

# Run System-side file if it exists
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# For Bash Completion (via `brew install bash-completion`)
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

# Aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


##########################
#  Function Convenience  #
##########################

function cs {
cd "$@" && ls;
}

function alert () {
osascript -e "display notification \"$1\" with title \"Notification\" sound name \"Ping\""
}


##########################
#  Terminal Environment  #
##########################

export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad
export PATH="$PATH:/Library/TeX/texbin/"

if [ -f ~/.api_tokens ]; then
    . ~/.api_tokens
fi


##########################
#  Virtual Environments  #
##########################
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# Require virtual env for use.
export PIP_REQUIRE_VIRTUALENV=true

# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

