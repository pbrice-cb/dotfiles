## Homebrew: Enable bash completion

if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

## Setup: pyenv

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

## Setup: rbenv

if [ -f /usr/local/bin/rbenv ]
then
  eval "$(rbenv init -)"
fi
