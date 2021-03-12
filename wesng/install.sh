#!/bin/sh
#
# Pulls wesng (Windows Exploit Suggester - Next Generation) source

if test "$(uname -s)" = "Linux"
then
  if [ ! -d /opt/wesng ]; then
    git clone https://github.com/bitsadmin/wesng.git /opt/wesng
  fi
fi
