#!/bin/bash
#
# Installs droopscan via pipx

if test "$(uname)" = "Linux"
then
  if test ! $(which droopscan)  
  then
    python3 -m pipx install droopescan
  fi
fi

exit 0
