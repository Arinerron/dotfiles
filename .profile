
export PATH="$HOME/.poetry/bin:$PATH"
. "$HOME/.cargo/env"

export PATH="/home/aaron/.local/share/solana/install/active_release/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
## commented these out cuz it added like 2 seconds to the load time lol
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/home/aaron/.cargo/bin:$PATH"

_direnv_hook() {
  trap -- '' SIGINT
  eval "$("/usr/bin/direnv" export zsh)"
  trap - SIGINT
}
typeset -ag precmd_functions
if (( ! ${precmd_functions[(I)_direnv_hook]} )); then
  precmd_functions=(_direnv_hook $precmd_functions)
fi
typeset -ag chpwd_functions
if (( ! ${chpwd_functions[(I)_direnv_hook]} )); then
  chpwd_functions=(_direnv_hook $chpwd_functions)
fi

export PATH="$PATH:/home/aaron/github/depot_tools2"
