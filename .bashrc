
. "$HOME/.cargo/env"

# using startship
eval "$(starship init bash)"

# vim for bash
set -o vi

# auto suggestions - not sure if this is actually responsible for it
if [ -f /usr/local/share/bash-completion/bash_completion ]; then
  . /usr/local/share/bash-completion/bash_completion
fi

