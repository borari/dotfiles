#!/bin/bash
#
# Pulls phpggc source

if test "$(uname -s)" = "Linux"
then
  if [ ! -d /opt/phpggc ]; then
    sudo git clone https://github.com/ambionics/phpggc.git /opt/phpggc
    sudo chown -R $USER:$USER /opt/phpggc
  fi
fi
