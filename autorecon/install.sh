#!/bin/bash
#
# Installs AutoRecon via pipx

if test "$(uname -s)" = "Linux"
then
  if test ! $(which autorecon)
  then
    echo "  Installing AutoRecon for you."
    python3 -m pipx install autorecon
    echo "  Installing tree for you."
  fi
fi

exit 0
