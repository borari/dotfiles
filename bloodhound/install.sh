#!/bin/bash
#
# Pulls BloodHound source, needed for Ingestors

if test "$(uname -s)" = "Linux"
then
  if [ ! -d "/opt/BloodHound" ]; then
    sudo git clone https://github.com/BloodHoundAD/BloodHound.git /opt/BloodHound
    sudo chown -R $USER:$USER /opt/BloodHound
  fi
fi
