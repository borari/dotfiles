#!/bin/bash
#
# Installs tree

if test ! $(which tree)
then
  echo "  Installing tree for you."
  if test "$(uname)" = "Darwin"
  then
    brew install tree
  elif test "$(uname)" = "Linux"
  then
    sudo apt install tree -y
  fi
fi
