#!/bin/bash
#
# Installs pipx and dependent applications

# Checks for macOS since pipx is brew installed

if test "$(uname)" = "Darwin"
then
  if test ! $(which pipx)
  then
    echo "  Installing pipx via brew for you."
    brew install pipx
    pipx ensurepath
  else
    echo "  You already have pipx installed."
  fi
else
  if test ! $(which pipx)
  then
    echo "  Installing pipx for you."
    python3 -m pip install --user pipx
    python3 -m pipx ensurepath
  else
    echo "  You already have pipx installed."
  fi
fi

if test "$(uname)" = "Linux"
then
  pipx install virtualenv
  pipx install impacket
  pipx install rsactftool
  pipx install droopescan
  pipx install autorecon
fi

exit 0
