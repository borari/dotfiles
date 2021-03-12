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
    python3 -m pipx ensurepath
    # Enables ZSH completion
    #/bin/zsh autoload -U bashcompinit
    #bashcompinit
    #eval "$(register-python-argcomplete pipx)"
  else
    echo "  You already have pipx installed."
  fi
else
  if test ! $(which pip3)
  then
    echo " Installing pip3 for you"
    apt install python3-pip -y
  fi
  apt install python3-venv -y
  if test ! $(which pipx)
  then
    echo "  Installing pipx for you."
    python3 -m pip install --user pipx
    python3 -m pipx ensurepath
    # Enables ZSH completion
    #/bin/zsh autoload -U bashcompinit
    #/bin/zsh bashcompinit
    #/bin/zsh eval "$(register-python-argcomplete pipx)"
  else
    echo "  You already have pipx installed."
  fi
fi

exit 0
