#!/bin/bash
#
# Pulls wesng (Windows Exploit Suggester - Next Generation) source

if test "$(uname -s)" = "Linux"
then
  if [ ! -d /opt/wesng ]; then
    sudo git clone https://github.com/bitsadmin/wesng.git /opt/wesng
    sudo chown -R $USER:$USER /opt/wesng
  fi
fi
