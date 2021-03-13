# Pipe public key to clipboard, sourcing from /root/.ssh as needed for me on Kali.
if test "$(uname -s)" = "Darwin"
then
  alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"
elif test "$(uname -s)" = "Linux"
then
  if test "$(lsb_release -c)" = "Codename:	kali-rolling"
  then
    alias pubkey="more /root/.ssh/id_rsa.pub"
  else
    alias pubkey="more ~/.ssh/id_rsa.pub"
  fi
fi
