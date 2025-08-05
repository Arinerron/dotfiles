#!/bin/sh

[ -z "$PS1" ] && return
exec zsh

#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# virtualenv
#export WORKON_HOME=~/virtualenvs
#source /usr/local/bin/virtualenvwrapper.sh


# BEGIN_KITTY_SHELL_INTEGRATION
#if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION

#export PATH="$PATH:/home/aaron/.foundry/bin"
. "$HOME/.cargo/env"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/aaron/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/home/aaron/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/aaron/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/home/aaron/Downloads/google-cloud-sdk/completion.bash.inc'; fi
