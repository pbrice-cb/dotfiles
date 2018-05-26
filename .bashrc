## Setup: bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

## Setup: rbenv
if [ -f /usr/local/bin/rbenv ]; then
  eval "$(rbenv init -)"
fi

## Setup: docker completion
if [ -f /usr/local/bin/docker ]; then
  if command -v docker 1>/dev/null 2>&1; then
    if [ ! -L /usr/local/etc/bash_completion.d/docker ]; then
      ln -s /Applications/Docker.app/Contents/Resources/etc/docker.bash-completion /usr/local/etc/bash_completion.d/docker
      ln -s /Applications/Docker.app/Contents/Resources/etc/docker-machine.bash-completion /usr/local/etc/bash_completion.d/docker-machine
      ln -s /Applications/Docker.app/Contents/Resources/etc/docker-compose.bash-completion /usr/local/etc/bash_completion.d/docker-compose
    fi
  fi
fi

## CB Setup: pyenv
export PYENV_ROOT="$HOME/Desktop/Reno/pyenv"
export TMPDIR="$HOME/Desktop/Reno/tmp"

## CB Setup: homebrew
export HOMEBREW_CACHE="${HOME}/Desktop/Reno/homebrew/cache"
export HOMEBREW_TEMP="${HOME}/Desktop/Reno/homebrew/temp"

## Setup: pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi