#!/bin/bash
#
# Pulls nishang source

if test "$(uname -s)" = "Linux"
then
  if [ ! -d /opt/nishang ]; then
    sudo git clone https://github.com/samratashok/nishang.git /opt/nishang
    sudo chown -R $USER:$USER /opt/nishang
  fi
fi
