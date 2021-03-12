#!/bin/bash
#
# Installs AutoRecon via pipx

if test "$(uname -s)" = "Linux"
then
  if test ! $(which autorecon)
  then
    echo "  Installing AutoRecon for you."
    pipx install autorecon
  fi
fi

exit 0
