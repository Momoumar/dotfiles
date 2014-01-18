# Since .zshenv is always sourced, it often contains exported variables that should be available to other programs. 
# For example, $PATH, $EDITOR, and $PAGER are often set in .zshenv. Also, you can set $ZDOTDIR in .zshenv to specify an alternative location for the rest of your zsh configuration.

# Specify your defaults in this environment variable
## caskroom usually /opt/homebrew-cask/Caskroom
export HOMEBREW_CASK_OPTS="--appdir=/Applications --caskroom=/etc/Caskroom"

# export EDITOR="emacsclient -t"
# export ALTERNATE_EDITOR=""