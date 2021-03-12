fpath=($DOT/functions $fpath)

autoload -U $DOT/functions/*(:t)

export TERM=xterm-256color

HISTFILE="$XDG_DATA_HOME/zsh/zsh_history"
HISTSIZE=10000
SAVEHIST=10000
ZSH_THEME="powerlevel10k/powerlevel10k"
HYPHEN_INSENSITIVE="true"                # If true _ and - will be interchangeable.

setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
setopt HIST_VERIFY
setopt EXTENDED_HISTORY # add timestamps to history
setopt HIST_IGNORE_ALL_DUPS # don't record dupes in history
setopt HIST_REDUCE_BLANKS

# don't expand aliases _before_ completion has finished
#    like: git comm-[tab]
setopt complete_aliases

# zsh directory stack
setopt AUTO_PUSHD               # Push working dir to top of stack
setopt PUSHD_IGNORE_DUPS        # Don't store dupes on stack
setopt PUSHD_SILENT             # Don't print the dir stack after pushd or popd

# oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)
