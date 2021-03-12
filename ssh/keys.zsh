# Pipe public key to clipboard, sourcing from /root/.ssh as needed for me on Kali.
if [ "$(uname -s)" == "Darwin" ]
then
  alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"
elif [ "$(uname -s)" == "Linux" ]
then
  if [ "$(lsb_release -c)" == "Codename:	kali-rolling"
  then
    alias pubkey="more /root/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"
  else
    alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"
  fi
fi
