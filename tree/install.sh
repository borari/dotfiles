#!/bin/bash
#
# Installs tree via brew

if test ! $(which tree)
then
  echo "  Installing tree for you."
  brew install tree
fi

exit 0
