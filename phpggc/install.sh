#!/bin/sh
#
# Pulls phpggc source

if test "$(uname -s)" = "Linux"
then
  if [ ! -d /opt/phpggc ]; then
    git clone https://github.com/ambionics/phpggc.git /opt/phpggc
  fi
fi

exit 0
