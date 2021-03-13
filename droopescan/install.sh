#!/bin/bash
#
# Installs droopescan via pipx

if test "$(uname)" = "Linux"
then
  if test ! $(which droopescan)  
  then
    python3 -m pipx install droopescan
  fi
fi
