#!/bin/bash
#
# Pulls peda source from my private git

if test "$(uname -s)" = "Linux"
then
  if [ ! -d /opt/peda ]; then
    sudo git clone git@github.com:borari/peda.git /opt/peda
    sudo chown $USER:$USER /opt/peda
  fi
fi
