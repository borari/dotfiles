#!/bin/bash
#
# pipx
#
# Installs w/brew on macOS, pip on Linux

if test "$(uname)" = "Darwin"
then
  if test ! $(which pipx)
  then
    echo "  Installing pipx via brew for you."
    brew install pipx
    pipx ensurepath
    # Enables ZSH completion
    autoload -U bashcompinit
    bashcompinit
    eval "$(register-python-argcomplete pipx)"
  else
    echo "  You already have pipx installed."
  fi
else
  if test ! $(which pipx)
  then
    echo "  Installing pipx for you."
    python3 -m pip install --user pipx
    python3 -m pipx ensurepath
    # Enables ZSH completion
    autoload -U bashcompinit
    bashcompinit
    eval "$(register-python-argcomplete pipx)"
  else
    echo "  You already have pipx installed."
  fi
fi

exit 0
