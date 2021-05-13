#!/bin/bash
#
# Pulls odat source

if test "$(uname -s)" = "Linux"
then
  if [ ! -d /opt/odat ]; then
    sudo git clone https://github.com/quentinhardy/odat.git /opt/odat
    sudo chown -R $USER:$USER /opt/odat
    echo "Make sure to checkout odat branch: master-python3"
  fi
fi
