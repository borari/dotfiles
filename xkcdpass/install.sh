#!/bin/bash
#
# Installs xkcdpass via pipx

if test ! $(which xkcdpass)
then
  echo "  Installing xkcdpass for you."
  python3 -m pipx install xkcdpass
fi
