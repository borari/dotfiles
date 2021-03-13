#!/bin/sh
#
# Pulls BloodHound source, needed for Ingestors

if test "$(uname -s)" = "Linux"
then
  if [ ! -d "/opt/BloodHound" ]; then
    git clone https://github.com/BloodHoundAD/BloodHound.git /opt/BloodHound
  fi
fi
