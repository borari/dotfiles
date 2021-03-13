alias sudo='sudo env \"PATH=$PATH\"'
alias la-'ls -lAh --color'
alias ls1='ls -1 --color'
alias ll='ls -lh --color'

if test "$(uname)" = "Darwin"
then
  alias updatedb='sudo /usr/libexec/locate.updatedb'
fi
