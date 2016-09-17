# Source .bashrc on login if present

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin"

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi
