#!/bin/bash
#
# Installs xkcdpass via pipx

if test ! $(which xkcdpass)
then
  echo "  Installing xkcdpass for you."
  pipx install autorecon
fi

exit 0
