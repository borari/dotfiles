#!/bin/bash
#
# Installs hashid via pipx
# Kali installs this via apt, idk if other Linux dists do
# so I am leaving it as a blanket install.

if test ! $(which hashid)
then
  echo "  Installing hashid for you."
  pipx install hashid
fi

exit 0
