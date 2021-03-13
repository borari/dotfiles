#!/bin/sh
#
# xclip
#
# This installs xlip, not needed on macOS

if test "$(uname)" = "Darwin"
then
  exit 0
fi

if test ! "$(which xclip)"
then
  apt install xclip -y
fi
