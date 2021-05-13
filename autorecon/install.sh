#!/bin/bash
#
# Installs AutoRecon via pipx

if test "$(uname -s)" = "Linux"
then
  if test ! $(which autorecon)
  then
    echo " Installing AutoRecon dependencies first!"
    sudo apt install seclists curl enum4linux gobuster nbtscan nikto nmap onesixtyone oscanner smbclient smbmap smtp-user-enum snmp sslscan sipvicious tnscmd10g whatweb wkhtmltopdf -y
    echo "  Installing AutoRecon for you."
    python3 -m pipx install git+https://github.com/Tib3rius/AutoRecon.git
  fi
fi
