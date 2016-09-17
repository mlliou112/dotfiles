
# For Bash Completion (via `brew install bash-completion`)
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


##########################
#  Terminal Environment  #
##########################

export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad

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



