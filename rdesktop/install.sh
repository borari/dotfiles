#!/bin/bash
#
# Installs rdesktop via brew.
# Kali typically installs this w/ apt by default

if test ! $(which rdesktop)
then
  echo "  Installing rdesktop for you."
  brew install rdesktop
fi

exit 0
