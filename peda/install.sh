#!/bin/sh
#
# Pulls peda source from my private git

if test "$(uname -s)" = "Linux"
then
  if [ ! -d /opt/peda ]; then
    git clone git@github.com:borari/peda.git /opt/peda
  fi
fi

exit 0
