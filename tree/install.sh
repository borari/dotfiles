#!/bin/bash
#
# Installs tree via brew

if test ! $(which tree)
then
  echo "  Installing tree for you."
  if test "$(uname)" = "Darwin"
  then
    brew install tree
  elif test "$(uname)" = "Linux"
  then
    apt install tree -y
  fi
fi

exit 0
