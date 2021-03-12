#!/bin/sh
#
# Pulls odat source

if test "$(uname -s)" = "Linux"
then
  if [ ! -d /opt/odat ]; then
    git clone https://github.com/quentinhardy/odat.git /opt/odat
    echo "Make sure to checkout odat branch: master-python3"
  fi
fi

exit 0
