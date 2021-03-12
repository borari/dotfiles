#!/bin/bash
#
# Installs rsactftool via pipx

if test ! $(which rsactftool)
then
  echo "  Installing rsactftool for you."
  python3 -m pipx install rsactftool
fi

exit 0
