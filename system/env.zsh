# Required to support XDG locations
export WGETRC=$XDG_CONFIG_HOME/wget/wgetrc
export XAUTHORITY=$XDG_CONFIG_HOME/x11/Xauthority
export VIMINIT="source $XDG_CONFIG_HOME/vim/vimrc"

# xdg-defined path support for MacOS apps
export GNUPGHOME=$XDG_CONFIG_HOME/gnupg

# Paths to my Project/parent git folders
export PROJECTS=~/Projects
export CTF=$PROJECTS/ctf
export OFFSEC=$PROJECTS/offsec
export TOOLS=$PROJECTS/tools
export SPLOITS=$PROJECTS/exploit-dist

export EDITOR="vim"
