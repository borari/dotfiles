#!/bin/bash

# Pipe public key to clipboard, sourcing from /root/.ssh as needed for me on Kali.
if test "$(uname -s)" = "Darwin"
then
  alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"
else test "$(uname -s)" = "Linux"
  alias pubkey="more ~/.ssh/id_rsa.pub"
fi

