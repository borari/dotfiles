#!/bin/bash
#
# Installs droopscan via pipx

if test "$(uname)" = "Linux"
then
  if test ! $(which droopscan)  
  then
    pipx install droopscan
  fi
fi

exit 0
