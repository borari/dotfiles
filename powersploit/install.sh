#!/bin/bash
#
# Pulls PowerSploit source

if test "$(uname -s)" = "Linux"
then
  if [ ! -d /opt/PowerSploit ]; then
    sudo git clone https://github.com/PowerShellMafia/PowerSploit.git /opt/PowerSploit
    sudo chown -R $USER:$USER /opt/PowerSploit
  fi
fi
