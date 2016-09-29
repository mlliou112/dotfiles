# Taken from "https://github.com/mathiasbynens/dotfiles/blob/master/.aliases"
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Stuff I never really use but cannot delete either because of http://xkcd.com/530/
alias stfu="osascript -e 'set volume output muted true'"
alias pumpitup="osascript -e 'set volume 7'"

# Kill all the tabs in Chrome to free up memory
# [C] explained: http://www.commandlinefu.com/commands/view/402/exclude-grep-from-your-grepped-output-of-ps-alias-included-in-description
alias chromekill="ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill"

# Show/hide hidden files in Finder
alias showhidden="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hidehidden="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Trim new lines and copy to clipboard
alias copy="tr -d '\n' | pbcopy"

alias ..="cd .."
alias ll="ls -l"
alias la="ls -la"
alias lh="ls -d .*"
alias hacking="cat /dev/urandom | hexdump -C | grep \"ca fe\""
alias hcc="ssh mliou3@tusker.unl.edu"

# alias ipyspark='IPYTHON_OPTS="notebook" /usr/local/bin/pyspark'
# alias youtubeextractaudio='youtube-dl --extract-audio --audio-format mp3'
