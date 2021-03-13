#!/bin/sh
#
# Pulls PowerSploit source

if test "$(uname -s)" = "Linux"
then
  if [ ! -d /opt/PowerSploit ]; then
    git clone https://github.com/PowerShellMafia/PowerSploit.git /opt/PowerSploit
  fi
fi
