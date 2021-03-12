#!/bin/sh
#
# Pulls nishang source

if test "$(uname -s)" = "Linux"
then
  if [ ! -d /opt/nishang ]; then
    git clone https://github.com/samratashok/nishang.git /opt/nishang
  fi
fi
