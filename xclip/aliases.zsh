#!/bin/bash

if test "$(uname)" = "Darwin"
then
 exit 0
fi

if test "$(which xlip)"
then
  alias pbcopy='xclip -selection clipboard'
  alias pbpaste='xclip -selection clipboard -o'
fi
